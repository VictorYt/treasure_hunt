#!/bin/bash
source .script/quest_functions.sh

# Quest starts here...
pirate_say "Let's see if we have all we need for this quest...\n"
sleep 1

# Check the ship:
if [[ ! -f "$SHIP" ]]; then
    echo "$(random_exclamation) We're missing a ship! Talk about a bad start."
    exit 1
fi
echo -e "\nThat's a good ship we have there!"
cat $SHIP
sleep 2

# Check rhum supplies:
if [[ ! -f "$RHUM" ]]; then
    echo "$(random_exclamation) There's no rhum on that ship! Let's get back to work, we'll never make it without rhum!"
    exit 1
fi
echo -e "\nRhum supplies are loaded, now we're taking!"
cat $RHUM
sleep 2

# Fly the flag:
if [[ ! -f "$FLAG" ]]; then
    echo "$(random_exclamation) This ship has no flag! What's a pirate ship without a flag. Hurry and get one!"
    exit 1
fi
echo -e "\nRaise the flag and let the treasure hunt begin! Sail Ho!"
cat $FLAG
sleep 1

echo -e "\nWell done! One team member can now merge the 'add-supplies' branch into the 'main' branch."
exit 0
