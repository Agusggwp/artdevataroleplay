-- Migration: Add steam_hex column to users table
-- Stores Steam Hex identifier for tracking/logging purposes

-- Simple approach - just add the column without AFTER clause
ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `steam_hex` VARCHAR(50) DEFAULT NULL;

-- Add index for faster queries
ALTER TABLE `users` ADD INDEX IF NOT EXISTS `idx_steam_hex` (`steam_hex`);
