require "./ticket"
require "date"

puts "ようこそ、ひらかたパークへ"
today = Date.today
puts "#{today.mon}月#{today.day}日#{%w(日 月 火 水 木 金 土)[today.wday]}曜日"

if today.wday == 0 || today.wday == 6
    puts "本日、キャンペーン中！入場料金２割引です"
end

puts "------------------------"
ticket1 = Ticket.new(age:"おとな（中学生以上）",price:1400)
ticket2 = Ticket.new(age:"こども",price:800)

tickets = [ticket1,ticket2]

number = 0

tickets.each do |tiketto|
    puts "#{number} . #{tiketto.info}"
    number += 1
end

puts "チケット番号を選択してください"
ticket_number = gets.to_i

selected_ticket = tickets[ticket_number]

puts "#{selected_ticket.age}を何枚購入しますか？"

count = gets.to_i


puts "合計 #{selected_ticket.treasurer(count)}円"
