-- Migration: Add steam_hex column to users table
-- Alters the users table to store Steam Hex identifier

ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `steam_hex` VARCHAR(50) Default NULL AFTER `license`;
ALTER TABLE `users` ADD INDEX IF NOT EXISTS `steam_hex` (`steam_hex`);

-- Update existing users (if they have a steam identifier stored elsewhere)
-- Note: This needs to be run after players join and their steam hex is captured

print("^2[Database Migration] Added steam_hex column to users table^7")