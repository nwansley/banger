=begin

YOUR TASK: Use your knowledge of varialbes and loops to change the
"rate" of the banger.wav sample. Print to the Log to help you understand 
what is happening and troubleshoot if you run into difficulty!

=end

# Use this variable to speed up, then slow down the sample
x = 1
# Use this variable to store the long file path of your sample
banger = "C:/Users/nicholas_wansley/Downloads/challenge_f/this_is_a_banger.wav"



# PLAY THE SAMPLE AT NORMAL SPEED (rate: 1 is the default)
sample banger
sleep 3



y = 1
# PLAY THE SOUND AT A FASTER SPEED (rate > 1)
live_loop:do do
  3.times do
    sample banger, rate: y
    y = y - 0.2
    sleep 2
  end
  5.times do
    sample banger, rate: y
    y = y + 0.2
    sleep 2
  end
  stop
end