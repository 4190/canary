/**
 * Canary - A free and open-source MMORPG server emulator
 * Copyright (©) 2019-2022 OpenTibiaBR <opentibiabr@outlook.com>
 * Repository: https://github.com/opentibiabr/canary
 * License: https://github.com/opentibiabr/canary/blob/main/LICENSE
 * Contributors: https://github.com/opentibiabr/canary/graphs/contributors
 * Website: https://docs.opentibiabr.com/
 */

#include "pch.hpp"

#include "items/tile.h"
#include "creatures/monsters/monster.h"
#include "map/house/housetile.h"
#include "map/house/house.h"
#include "game/game.h"

HouseTile::HouseTile(int32_t initX, int32_t initY, int32_t initZ, House* initHouse) :
	DynamicTile(initX, initY, initZ), house(initHouse) { }

void HouseTile::addThing(int32_t index, Thing* thing) {
	Tile::addThing(index, thing);

	if (!thing || !thing->getParent()) {
		return;
	}

	if (Item* item = thing->getItem()) {
		updateHouse(item);
	}
}

void HouseTile::internalAddThing(uint32_t index, Thing* thing) {
	Tile::internalAddThing(index, thing);

	if (!thing || !thing->getParent()) {
		return;
	}

	if (Item* item = thing->getItem()) {
		updateHouse(item);
	}
}

void HouseTile::updateHouse(Item* item) {
	if (item->getParent() != this) {
		return;
	}

	Door* door = item->getDoor();
	if (door) {
		if (door->getDoorId() != 0) {
			house->addDoor(door);
		}
	} else {
		BedItem* bed = item->getBed();
		if (bed) {
			house->addBed(bed);
		}
	}
}

ReturnValue HouseTile::queryAdd(int32_t index, const Thing &thing, uint32_t count, uint32_t tileFlags, Creature* actor /* = nullptr*/) const {
	if (const Creature* creature = thing.getCreature()) {
		if (const Player* player = creature->getPlayer()) {
			if (!house->isInvited(player)) {
				return RETURNVALUE_PLAYERISNOTINVITED;
			}
		} else if (const Monster* monster = creature->getMonster()) {
			if (monster->isSummon()) {
				if (!house->isInvited(monster->getMaster()->getPlayer())) {
					return RETURNVALUE_NOTPOSSIBLE;
				}
				if (house->isInvited(monster->getMaster()->getPlayer()) && (hasFlag(TILESTATE_BLOCKSOLID) || (hasBitSet(FLAG_PATHFINDING, flags) && hasFlag(TILESTATE_NOFIELDBLOCKPATH)))) {
					return RETURNVALUE_NOTPOSSIBLE;
				} else {
					return RETURNVALUE_NOERROR;
				}
			}
		}
	} else if (thing.getItem() && actor) {
		Player* actorPlayer = actor->getPlayer();
		if (house && (!house->isInvited(actorPlayer) || house->getHouseAccessLevel(actorPlayer) == HOUSE_GUEST) && g_configManager().getBoolean(ONLY_INVITED_CAN_MOVE_HOUSE_ITEMS)) {
			return RETURNVALUE_CANNOTTHROW;
		}
	}
	return Tile::queryAdd(index, thing, count, tileFlags, actor);
}

Tile* HouseTile::queryDestination(int32_t &index, const Thing &thing, Item** destItem, uint32_t &tileFlags) {
	if (const Creature* creature = thing.getCreature()) {
		if (const Player* player = creature->getPlayer()) {
			if (!house->isInvited(player)) {
				const Position &entryPos = house->getEntryPosition();
				Tile* destTile = g_game().map.getTile(entryPos);
				if (!destTile) {
					g_logger().error("[HouseTile::queryDestination] - "
									 "Entry not correct for house name: {} "
									 "with id: {} not found tile: {}",
									 house->getName(), house->getId(), entryPos.toString());
					destTile = g_game().map.getTile(player->getTemplePosition());
					if (!destTile) {
						destTile = &(Tile::nullptr_tile);
					}
				}

				index = -1;
				*destItem = nullptr;
				return destTile;
			}
		}
	}

	return Tile::queryDestination(index, thing, destItem, tileFlags);
}

ReturnValue HouseTile::queryRemove(const Thing &thing, uint32_t count, uint32_t flags, Creature* actor /*= nullptr*/) const {
	const Item* item = thing.getItem();
	if (!item) {
		return RETURNVALUE_NOTPOSSIBLE;
	}

	if (actor && g_configManager().getBoolean(ONLY_INVITED_CAN_MOVE_HOUSE_ITEMS)) {
		Player* actorPlayer = actor->getPlayer();
		if (house && !house->isInvited(actorPlayer)) {
			return RETURNVALUE_NOTPOSSIBLE;
		} else if (house && house->getHouseAccessLevel(actorPlayer) == HOUSE_GUEST) {
			return RETURNVALUE_NOTMOVEABLE;
		}
	}
	return Tile::queryRemove(thing, count, flags);
}
