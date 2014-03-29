require 'json'
require 'open-uri'

json = JSON.parse(%[
{
    "Club-Mate 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_club_mate_03.wav"
    },
    "Club-Mate 0,5l": {
        "scanner_code": "4029764001807",
        "sound_file": "sounds/nanooq_club_mate_05.wav"
    },
    "Cola Club-Mate 0,3l": {
        "scanner_code": "4029764001883",
        "sound_file": "sounds/nanooq_cola_club_mate.wav"
    },
    "Flora-Mate 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_flora_mate_03.wav"
    },
    "Flora Mate 0,5l": {
        "scanner_code": "4260031874056",
        "sound_file": "sounds/nanooq_flora_mate_05.wav"
    },
    "Frohlunder 0,3l": {
        "scanner_code": "2342133700005",
        "sound_file": "sounds/nanooq_frohlunder.wav"
    },
    "Gruen 0,3l": {
        "scanner_code": "4260187540010",
        "sound_file": "sounds/nanooq_gruen.wav"
    },
    "Hermann Brause Apfel Kirsch Schorle 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_hermann_apfel_kirsch.wav"
    },
    "ICE-Tea KRAFTSTOFF 0,5l": {
        "scanner_code": "4029764001814",
        "sound_file": "sounds/nanooq_ice_tea_kraftstoff.wav"
    },
    "Club-Mate Winter Edition 0,5l": {
        "key_code": "KEY_W",
        "scanner_code": "4029764001869",
        "sound_file": "sounds/nanooq_winter_mate_05.wav"
    },
    "Pimpinella Anis Limiette 0,3l": {
        "scanner_code": "42602903",
        "sound_file": "sounds/nanooq_pimpinella.wav"
    },
    "Hermann Brause Rhabarber-Erdbeer Schorle 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_hermann_rhabarber_erdbeere.wav"
    },
    "Hermann Brause Melone Limette 0,3l": {
        "scanner_code": "1094922076235",
        "sound_file": "sounds/nanooq_hermann_melone_limette.wav"
    },
    "Hermann Brause Zitrone 0,3l": {
        "scanner_code": "1094922076211",
        "sound_file": "sounds/nanooq_hermann_zitrone.wav"
    },
    "Hermann Brause Orange 0,3l": {
        "scanner_code": "1094922076228",
        "sound_file": "sounds/nanooq_hermann_orange.wav"
    },
    "Hausmarke Kaffee Cola 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_hausmarke_kaffee_cola.wav"
    },
    "Hausmarke Lakritz Cola 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_hausmarke_lakritz_cola.wav"
    },
    "Premium Cola 0,3l": {
        "scanner_code": "",
        "sound_file": "sounds/nanooq_premium_cola_03.wav"
    },
    "Premium Cola 0,5l": {
        "scanner_code": "2342133700012",
        "sound_file": "sounds/nanooq_premium_cola_05.wav"
    }
}])

json2 = {}

for key in json.keys
    ean = json[key]["scanner_code"] 
      next if ean.empty?
        json2[ean] = {name: key, price: 1.5}
end

puts json2.to_json
