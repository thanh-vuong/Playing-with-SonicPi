# Welcome to Sonic Pi v3.1
use_bpm 60

live_loop :kick do
  sample :drum_heavy_kick, amp: 1
  sleep 0.125
  sample :drum_heavy_kick
  sleep 0.125
  #sample :drum_heavy_kick
  sleep 0.25
  #sample :drum_heavy_kick
  sleep 0.25
  sample :drum_heavy_kick, amp: 1
  sleep 0.25
  sample :drum_heavy_kick
  sleep 0.25
  sleep 0.25
  sleep 0.25
  sleep 0.25
  ##| sample :drum_heavy_kick
  ##| sleep 0.5
  ##| sample :drum_heavy_kick
  ##| sleep 0.125
  ##| sample :drum_heavy_kick
  ##| sleep 0.25
end

live_loop :snare do
  sync :kick
  sleep 0.5
  with_fx :reverb, mix: 0.6, damp: 0.2 do
    sample :sn_zome, amp: 2
  end
  sleep 0.5
end