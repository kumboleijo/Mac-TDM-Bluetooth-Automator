#!/bin/sh
# Toggle Display and Bluetooth v1.0
# Written by Matt <matt@geekbox.ch>
# Minor changes by Kumboleijo <inf3035@hs-worms.de>

# Set your hostname
# (replace 'user@hostname' with your username and hostname)
REMOTE=user@hostname

# Wait for user to toggle display (check profiler for missing LCD)
until ! /usr/sbin/system_profiler SPDisplaysDataType \
        | grep "Display Type: LCD" > /dev/null; do
    echo "Press CMD+F2 to toggle Display Mode or CTRL+C to cancel."
    sleep 2
done

echo "Target mode triggered, toggle Bluetooth"
/usr/local/bin/blueutil off
ssh $REMOTE '/usr/local/bin/blueutil on'

# Wait for remote machine to disconnect
until /usr/sbin/system_profiler SPDisplaysDataType \
        | grep "Display Type: LCD" > /dev/null; do
    sleep 2
done

echo "Thunderbolt connection lost, toggle Bluetooth"
ssh $REMOTE '/usr/local/bin/blueutil off'
/usr/local/bin/blueutil on
echo "Welcome back!"