#!/usr/bin/env ruby -w
# This script copies the newsletters downloaded by script 'newsletters_grabber.rb' to /copper/datacollections/private/<associated folder>  for marketing to collect
# This process needs doing every thursday.


# Where to get/put the files
SOURCE = "/Users/rparkinson/newsletter"
TARGET = "/Volumes/DataCollection/private"


files = ["bikeradar_newsletterlist", 
          "chopmtb-newsletter", 
          "classicford_newsletterlist", 
          "classicrockmag-newsletter", 
          "classicsmonthly_newsletterlist", 
          "edgeonline-newsletter", 
          "fastford_newsletterlist", 
          "metalhammer-newsletter", 
          "musicradar_mailing_lists", 
          "t3_optins", 
          "tf_email_list", 
          "tr_complete_email_list"]
          
if system("ls #{TARGET}")       
  files.each do |newsletter|
        case newsletter
          when "bikeradar_newsletterlist"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/BikeRadar")
          when "chopmtb-newsletter"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/ChopMTB")
          when "classicford_newsletterlist"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/ClassicFord")
          when "classicrockmag-newsletter"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/TeamRock/ClassicRock")
          # when "classicsmonthly_newsletterlist"
          # system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/Classics\ Monthly")
          when "edgeonline-newsletter"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/Edge")
          when "fastford_newsletterlist"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/FastFord")
          when "metalhammer-newsletter"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/TeamRock/MetalHammer") 
          when "musicradar_mailing_lists"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/MusicRadar")
          when "t3_optins"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/T3")
          when "tf_email_list"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/TotalFilm")
          when "tr_complete_email_list"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/TechRadar")
          when "tr_complete_email_list_crappyfile"
          system("cp -n -v #{SOURCE}/#{newsletter}* #{TARGET}/TechRadar")
          else
            puts "**************************I have no idea what to do with #{newsletter}!******************************"
          end
    end
  else
    puts "*********************#{TARGET} is not mounted. Please mount this share.***************************"
end