# Setup RP Indonesia (Quick Guide)

## 1) Staff Permission + Whitelist
- Edit `permissions.cfg` untuk level staff dan identifier staff.
- Edit `whitelist.cfg` untuk daftar whitelist via ACL.
- Untuk whitelist saat connect (deferrals), edit resource `resources/[standalone]/id_starter/server.lua` pada table `whitelist`.

## 2) Ekonomi Indonesia
File yang sudah dituning:
- `resources/[core]/es_extended/shared/config/main.lua`
- `resources/[esx_addons]/esx_society/config.lua`
- `resources/[esx_addons]/esx_shops/config.lua`
- `resources/[esx_addons]/esx_barbershop/config.lua`
- `resources/[esx_addons]/esx_accessories/config.lua`
- `resources/[esx_addons]/esx_clotheshop/config.lua`
- `resources/[esx_addons]/esx_dmvschool/config.lua`
- `resources/[esx_addons]/esx_vehicleshop/config.lua`
- `resources/[esx_addons]/esx_boat/config.lua`
- `resources/[esx_addons]/esx_policejob/config.lua`

Jalankan SQL berikut sekali:
- `sql/id_rp_economy_job_salaries.sql`
- `sql/id_rp_police_fines.sql`

## 3) Paket Starter RP Indonesia
Resource: `resources/[standalone]/id_starter`

Command default:
- `/rules`
- `/discord`
- `/staff`
- `/pemula`
- `/setwhitelist on|off` (admin)

Konfigurasi utama:
- `resources/[standalone]/id_starter/config.lua`

## 4) Admin Panel Full Power
Resource: `resources/[standalone]/id_adminpanel`

Command buka panel:
- `/adminpanel`
- `/ap`

Fitur utama:
- Goto / Bring
- Revive / Heal / Slay
- Freeze / Unfreeze
- Give/Remove money (bank/cash)
- Set job preset
- Kick reason preset

Pastikan ACE panel ada di `permissions.cfg`:
- `add_ace group.admin idrp.adminpanel allow`
- `add_ace group.superadmin idrp.adminpanel allow`
- `add_ace group.owner idrp.adminpanel allow`

## 5) Restart Resource
Setelah ubah config atau SQL, restart resource:
- `restart es_extended`
- `restart esx_society`
- `restart esx_shops`
- `restart esx_policejob`
- `restart id_starter`
- `restart id_adminpanel`

Atau restart server full.
