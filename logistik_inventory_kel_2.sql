-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2026 at 08:38 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistik_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_code` varchar(20) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_code`, `brand_name`, `logo_url`, `is_active`) VALUES
(1, 'INTEL', 'Intel Corporation', 'https://example.com/logos/intel.png', 1),
(2, 'AMD', 'Advanced Micro Devices', 'https://example.com/logos/amd.png', 1),
(3, 'NVIDIA', 'NVIDIA Corporation', 'https://example.com/logos/nvidia.png', 1),
(4, 'MSI', 'Micro-Star International', 'https://example.com/logos/msi.png', 1),
(5, 'GIGABYTE', 'Gigabyte Technology', 'https://example.com/logos/gigabyte.png', 1),
(6, 'ASUS', 'ASUSTeK Computer', 'https://example.com/logos/asus.png', 1),
(7, 'ZOTAC', 'ZOTAC', 'https://example.com/logos/zotac.png', 1),
(8, 'ASROCK', 'ASRock', 'https://example.com/logos/asrock.png', 1),
(9, 'BIOSTAR', 'Biostar', 'https://example.com/logos/biostar.png', 1),
(10, 'CORSAIR', 'Corsair Memory', 'https://example.com/logos/corsair.png', 1),
(11, 'KINGSTON', 'Kingston Technology', 'https://example.com/logos/kingston.png', 1),
(12, 'GSKILL', 'G.Skill', 'https://example.com/logos/gskill.png', 1),
(13, 'ADATA', 'ADATA Technology', 'https://example.com/logos/adata.png', 1),
(14, 'CRUCIAL', 'Crucial', 'https://example.com/logos/crucial.png', 1),
(15, 'SAMSUNG', 'Samsung Electronics', 'https://example.com/logos/samsung.png', 1),
(16, 'WD', 'Western Digital', 'https://example.com/logos/wd.png', 1),
(17, 'SEAGATE', 'Seagate Technology', 'https://example.com/logos/seagate.png', 1),
(18, 'SANDISK', 'SanDisk', 'https://example.com/logos/sandisk.png', 1),
(19, 'SEASONIC', 'Seasonic', 'https://example.com/logos/seasonic.png', 1),
(20, 'COOLERMASTER', 'Cooler Master', 'https://example.com/logos/coolermaster.png', 1),
(21, 'EVGA', 'EVGA Corporation', 'https://example.com/logos/evga.png', 1),
(22, 'THERMALTAKE', 'Thermaltake', 'https://example.com/logos/thermaltake.png', 1),
(23, 'NOCTUA', 'Noctua', 'https://example.com/logos/noctua.png', 1),
(24, 'DEEPCOOL', 'Deepcool', 'https://example.com/logos/deepcool.png', 1),
(25, 'NZXT', 'NZXT', 'https://example.com/logos/nzxt.png', 1),
(26, 'LIANLI', 'Lian Li', 'https://example.com/logos/lianli.png', 1),
(27, 'FRACTAL', 'Fractal Design', 'https://example.com/logos/fractal.png', 1),
(28, 'AMI', 'American Megatrends', 'https://example.com/logos/ami.png', 1),
(29, 'PHOENIX', 'Phoenix Technologies', 'https://example.com/logos/phoenix.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_code` varchar(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_code`, `category_name`, `description`, `is_active`) VALUES
(1, 'CPU', 'Central Processing Unit', 'Prosesor utama komputer untuk menjalankan instruksi dan pemrosesan data', 1),
(2, 'GPU', 'Graphics Processing Unit', 'Kartu grafis untuk pemrosesan gambar, video, dan gaming', 1),
(3, 'MB', 'Mainboard', 'Papan sirkuit utama yang menghubungkan semua komponen komputer', 1),
(4, 'RAM', 'Memory RAM', 'Memori akses acak untuk penyimpanan data sementara', 1),
(5, 'BIOS', 'BIOS/CMOS', 'Basic Input Output System untuk pengaturan dasar dan booting', 1),
(6, 'NVRAM', 'Non-Volatile RAM', 'Memori non-volatile untuk menyimpan konfigurasi sistem', 1),
(7, 'SSD', 'Solid State Drive', 'Media penyimpanan data berkecepatan tinggi', 1),
(8, 'HDD', 'Hard Disk Drive', 'Media penyimpanan data magnetik kapasitas besar', 1),
(9, 'PSU', 'Power Supply Unit', 'Catu daya untuk menyuplai listrik ke seluruh komponen', 1),
(10, 'FAN', 'Cooling Fan', 'Kipas pendingin untuk menjaga suhu komponen', 1),
(11, 'HS', 'Heatsink', 'Pendingin pasif untuk menyerap dan membuang panas', 1),
(12, 'CASE', 'Casing/Chassis', 'Rangka atau wadah untuk melindungi komponen komputer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `driver_code` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `license_number` varchar(30) NOT NULL,
  `license_type` enum('A','B','C','SIM_A','SIM_B','SIM_C') NOT NULL,
  `license_expiry` date NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` enum('available','on_delivery','off_duty') DEFAULT 'available',
  `joined_date` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_code`, `full_name`, `license_number`, `license_type`, `license_expiry`, `phone`, `status`, `joined_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'DRV-001', 'Ahmad Supriyadi', 'SIM-1234567890', 'SIM_A', '2028-12-31', '081234567001', 'available', '2024-01-15', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(2, 'DRV-002', 'Budi Santoso', 'SIM-1234567891', 'SIM_B', '2027-06-30', '081234567002', 'on_delivery', '2024-02-20', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(3, 'DRV-003', 'Cecep Maulana', 'SIM-1234567892', 'SIM_C', '2026-03-15', '081234567003', 'available', '2024-03-10', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(4, 'DRV-004', 'Deni Firmansyah', 'SIM-1234567893', 'SIM_A', '2029-01-10', '081234567004', 'off_duty', '2023-12-05', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(5, 'DRV-005', 'Eka Wulandari', 'SIM-1234567894', 'SIM_B', '2028-08-20', '081234567005', 'available', '2024-04-01', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(6, 'DRV-006', 'Fajar Nugroho', 'SIM-1234567895', 'SIM_C', '2027-11-30', '081234567006', 'on_delivery', '2024-01-25', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(7, 'DRV-007', 'Galih Permadi', 'SIM-1234567896', 'SIM_A', '2026-05-12', '081234567007', 'available', '2024-02-14', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(8, 'DRV-008', 'Hendra Wijaya', 'SIM-1234567897', 'SIM_B', '2028-09-18', '081234567008', 'available', '2024-03-20', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(9, 'DRV-009', 'Indah Permatasari', 'SIM-1234567898', 'SIM_C', '2027-04-25', '081234567009', 'off_duty', '2024-01-08', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54'),
(10, 'DRV-010', 'Joko Prasetyo', 'SIM-1234567899', 'SIM_A', '2029-07-07', '081234567010', 'available', '2024-04-12', 1, '2026-05-01 00:54:54', '2026-05-01 00:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceipt`
--

CREATE TABLE `goodsreceipt` (
  `gr_id` int(11) NOT NULL,
  `gr_number` varchar(50) NOT NULL,
  `po_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `receipt_date` date NOT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `received_by` int(11) NOT NULL,
  `status` enum('draft','completed','cancelled') DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreceipt`
--

INSERT INTO `goodsreceipt` (`gr_id`, `gr_number`, `po_id`, `location_id`, `receipt_date`, `invoice_number`, `received_by`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'GR-20260501-0001', 1, 1, '2026-05-10', 'INV-INTEL-001', 2, 'completed', 'Penerimaan barang dari Intel - semua barang baik', '2026-05-01 04:17:02', '2026-05-01 04:17:02'),
(2, 'GR-20260502-0002', 2, 1, '2026-05-11', 'INV-ASUS-002', 2, 'completed', 'Penerimaan GPU ASUS - kondisi baik semua', '2026-05-01 04:17:02', '2026-05-01 04:17:02'),
(3, 'GR-20260503-0003', 3, 2, '2026-05-12', 'INV-KING-003', 3, 'completed', 'Penerimaan RAM Kingston - sebagian barang datang', '2026-05-01 04:17:02', '2026-05-01 04:17:02'),
(4, 'GR-20260504-0004', 3, 2, '2026-05-15', 'INV-KING-004', 3, 'completed', 'Penerimaan lanjutan RAM Kingston - sisa pesanan', '2026-05-01 04:17:02', '2026-05-01 04:17:02'),
(5, 'GR-20260505-0005', 4, 1, '2026-05-14', 'INV-SAMSUNG-005', 2, 'draft', 'Penerimaan SSD Samsung - masih proses pengecekan', '2026-05-01 04:17:02', '2026-05-01 04:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `goodsreceiptdetail`
--

CREATE TABLE `goodsreceiptdetail` (
  `gr_detail_id` int(11) NOT NULL,
  `gr_id` int(11) NOT NULL,
  `po_detail_id` int(11) NOT NULL,
  `batch_number` varchar(50) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `quantity_received` int(11) NOT NULL,
  `quantity_good` int(11) NOT NULL,
  `quantity_damaged` int(11) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goodsreceiptdetail`
--

INSERT INTO `goodsreceiptdetail` (`gr_detail_id`, `gr_id`, `po_detail_id`, `batch_number`, `expiry_date`, `quantity_received`, `quantity_good`, `quantity_damaged`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'BATCH-INTEL-001', '2028-12-31', 20, 20, 0, 'Intel Core i9-13900K - semua baik', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(2, 1, 2, 'BATCH-INTEL-002', '2028-12-31', 15, 14, 1, 'Intel Core i7-13700K - 1 unit rusak fisik', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(3, 2, 3, 'BATCH-ASUS-001', NULL, 10, 10, 0, 'ASUS RTX 4070 Ti - tidak ada expiry date', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(4, 2, 4, 'BATCH-ASUS-002', NULL, 8, 7, 1, 'NVIDIA RTX 4060 - 1 unit cacat', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(5, 3, 5, 'BATCH-KING-001', '2030-01-01', 30, 30, 0, 'Kingston RAM 16GB - batch pertama, semua baik', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(6, 3, 6, NULL, '2030-01-01', 0, 0, 0, 'Batch kedua belum datang', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(7, 4, 6, 'BATCH-KING-002', '2030-02-01', 20, 19, 1, 'Kingston RAM tambahan - 1 unit rusak', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(8, 5, 7, 'BATCH-SAM-001', NULL, 25, 25, 0, 'Samsung SSD 1TB - semua baik, masih draft', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(9, 5, 8, 'BATCH-WD-001', NULL, 5, 5, 0, 'WD Black SSD 2TB - baru 5 unit dari 10', '2026-05-01 04:19:47', '2026-05-01 04:19:47'),
(10, 5, 8, 'BATCH-WD-002', NULL, 5, 4, 1, 'WD Black SSD 2TB - 1 unit damaged', '2026-05-01 04:19:47', '2026-05-01 04:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `inventory_code` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity_on_rack` int(11) NOT NULL DEFAULT 0,
  `quantity_on_store` int(11) NOT NULL DEFAULT 0,
  `total_stock` int(11) GENERATED ALWAYS AS (`quantity_on_rack` + `quantity_on_store`) STORED,
  `min_stock_level` int(11) DEFAULT 10,
  `last_counted_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `inventory_code`, `product_id`, `location_id`, `quantity_on_rack`, `quantity_on_store`, `min_stock_level`, `last_counted_date`, `created_at`, `updated_at`) VALUES
(1, 'INV001', 1, 1, 50, 100, 20, '2026-04-15', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(2, 'INV002', 8, 1, 15, 25, 8, '2026-04-15', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(3, 'INV003', 2, 2, 30, 50, 15, '2026-04-14', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(4, 'INV004', 11, 2, 40, 60, 15, '2026-04-14', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(5, 'INV005', 3, 3, 8, 12, 5, '2026-04-18', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(6, 'INV006', 14, 3, 6, 8, 5, '2026-04-18', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(7, 'INV007', 4, 4, 3, 5, 3, '2026-04-17', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(8, 'INV008', 19, 4, 3, 4, 3, '2026-04-17', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(9, 'INV009', 5, 5, 4, 6, 3, '2026-04-16', '2026-05-01 00:25:43', '2026-05-01 00:25:43'),
(10, 'INV010', 22, 5, 8, 7, 5, '2026-04-16', '2026-05-01 00:25:43', '2026-05-01 00:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_code` varchar(20) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `location_type` enum('warehouse','site') NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_code`, `location_name`, `location_type`, `address`, `city`, `province`, `latitude`, `longitude`, `is_active`) VALUES
(1, 'WH-JKT-01', 'Gudang Pusat Jakarta', 'warehouse', 'Jl. Raya Cakung No. 123', 'Jakarta Timur', 'DKI Jakarta', NULL, NULL, 1),
(2, 'WH-BKS-01', 'Gudang Bekasi', 'warehouse', 'Jl. Raya Surabaya No. 45', 'Surabaya', 'Jawa Timur', NULL, NULL, 1),
(3, 'ST-BKS-01', 'Site Proyek Bekasi', 'site', 'Jl. Harapan Indah No. 78', 'Bekasi', 'Jawa Barat', NULL, NULL, 1),
(4, 'ST-CBT-01', 'Site Proyek Cibitung', 'site', 'Jl. Halmahera. 90', 'Cibitung', 'Jawa Barat', NULL, NULL, 1),
(5, 'ST-KAR-01', 'Site Proyek Karawang', 'site', 'Jl. San Diego Hills No. 12', 'Karawang', 'Jawa Barat', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `product_name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `weight_kg` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `sku`, `barcode`, `product_name`, `description`, `category_id`, `brand_id`, `uom_id`, `weight_kg`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'CPU-INTEL-I910', '8901234567890', 'Intel Core i9-13900K Processor', 'Intel generasi ke-13, 24 core (8 P-core + 16 E-core), turbo boost up to 5.8 GHz, tanpa cooler', 1, 1, 1, '0.20', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(2, 'CPU-AMD-R959', '8901234567891', 'AMD Ryzen 9 7950X Processor', 'AMD Zen 4, 16 core / 32 thread, turbo up to 5.7 GHz, socket AM5, 170W TDP', 1, 2, 1, '0.18', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(3, 'CPU-INTEL-I712', '8901234567892', 'Intel Core i7-13700K Processor', 'Intel generasi ke-13, 16 core (8 P-core + 8 E-core), turbo boost up to 5.4 GHz', 1, 1, 1, '0.20', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(4, 'GPU-NV-RTX49', '8901234567893', 'NVIDIA GeForce RTX 4090 24GB', 'GPU flagship NVIDIA, 24GB GDDR6X, 16384 CUDA cores, ray tracing gen 3', 2, 3, 1, '1.50', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(5, 'GPU-ASUS-RTX47', '8901234567894', 'ASUS ROG Strix RTX 4070 Ti 12GB', 'ASUS ROG Strix dengan triple fan, 12GB GDDR6X, DLSS 3 support', 2, 6, 1, '1.40', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(6, 'GPU-MSIX-4080', '8901234567895', 'MSI GeForce RTX 4080 16GB', 'MSI Gaming X Trio, 16GB GDDR6X, 9728 CUDA cores, RGB lighting', 2, 4, 1, '1.45', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(7, 'GPU-NV-RTX60', '8901234567896', 'NVIDIA GeForce RTX 4060 8GB', 'GPU entry level for gaming, 8GB GDDR6, DLSS 3, 115W TDP', 2, 3, 1, '1.00', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(8, 'MB-ASUS-Z790', '8901234567897', 'ASUS ROG Maximus Z790 Hero', 'Motherboard premium untuk Intel LGA 1700, PCIe 5.0, DDR5, WiFi 6E, 5x M.2 slots', 3, 6, 1, '1.20', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(9, 'MB-MSIX-B760', '8901234567898', 'MSI B760 Gaming Plus WiFi', 'Motherboard mid-range LGA 1700, DDR5, PCIe 4.0, 2.5G LAN, WiFi 6', 3, 4, 1, '1.10', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(10, 'MB-GIG-Z790', '8901234567899', 'Gigabyte Z790 Aorus Master', 'Motherboard high-end LGA 1700, PCIe 5.0, DDR5, heatsink M.2 thermal guard', 3, 5, 1, '1.15', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(11, 'RAM-COR-DDR5', '8901234567900', 'Corsair Vengeance DDR5 32GB', 'Kit 2x16GB DDR5, speed 5600MHz, CAS latency 36, aluminium heatsink', 4, 10, 1, '0.10', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(12, 'RAM-KING-16G', '8901234567901', 'Kingston Fury Beast DDR5 16GB', 'Single module 16GB DDR5, speed 5200MHz, low profile design', 4, 11, 1, '0.08', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(13, 'RAM-GSK-32GB', '8901234567902', 'G.Skill Trident Z5 RGB 32GB', 'Kit 2x16GB DDR5 RGB, speed 6000MHz, CAS latency 30, heatsink dengan RGB', 4, 12, 1, '0.12', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(14, 'SSD-SAM-1TB', '8901234567903', 'Samsung 980 Pro NVMe SSD 1TB', 'NVMe PCIe 4.0, read up to 7000 MB/s, write up to 5100 MB/s, heatsink optional', 7, 15, 8, '0.05', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(15, 'SSD-WD-2TB', '8901234567904', 'Western Digital Black SN850X 2TB', 'NVMe PCIe 4.0, read up to 7300 MB/s, write up to 6600 MB/s, gaming focused', 7, 16, 9, '0.06', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(16, 'SSD-KING-500', '8901234567905', 'Kingston NV2 SSD 500GB', 'NVMe PCIe 4.0 entry level, read up to 3500 MB/s, write up to 2100 MB/s', 7, 11, 8, '0.04', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(17, 'HDD-SEA-2TB', '8901234567906', 'Seagate Barracuda 2TB HDD', 'HDD 3.5 inch, 5400 RPM, 256MB cache, untuk penyimpanan massal', 8, 17, 8, '0.25', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(18, 'HDD-WD-4TB', '8901234567907', 'Western Digital Blue 4TB HDD', 'HDD 3.5 inch, 5400 RPM, 256MB cache, reliable storage', 8, 16, 8, '0.28', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(19, 'PSU-SEA-850', '8901234567908', 'Seasonic Focus Plus 850W Gold', '850W 80+ Gold, fully modular, 10 tahun warranty, 135mm fan', 9, 19, 1, '1.80', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(20, 'PSU-CM-750', '8901234567909', 'Cooler Master MWE 750W Bronze', '750W 80+ Bronze, non-modular, 120mm fan, harga terjangkau', 9, 20, 1, '1.70', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(21, 'PSU-EVGA-1000', '8901234567910', 'EVGA SuperNOVA 1000W G6', '1000W 80+ Gold, fully modular, Japanese capacitors, 135mm FDB fan', 9, 21, 1, '1.90', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(22, 'FAN-NOC-NF12', '8901234567911', 'Noctua NF-A12x25 PWM Fan', '120mm premium fan, PWM control, SSO2 bearing, max 2000 RPM, sangat silent', 10, 23, 1, '0.15', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(23, 'FAN-CM-120', '8901234567912', 'Cooler Master MasterFan MF120', '120mm RGB fan, PWM control, hybrid blade design, 650-2000 RPM', 10, 20, 1, '0.16', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(24, 'HS-NOC-D15', '8901234567913', 'Noctua NH-D15 Heatsink', 'Dual tower heatsink, dual NF-A15 fans, support LGA 1700/AM5, sangat silent', 11, 23, 1, '1.30', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(25, 'HS-DC-AK620', '8901234567914', 'Deepcool AK620 Heatsink', 'Dual tower heatsink, 2x 120mm fans, support LGA 1700/AM5, nilai terbaik', 11, 24, 1, '1.25', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(26, 'CASE-LIAN-011', '8901234567915', 'Lian Li PC-O11 Dynamic Case', 'Mid-tower case, tempered glass, support E-ATX, 360mm radiator, gaming focused', 12, 26, 1, '8.50', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(27, 'CASE-NZXT-H5', '8901234567916', 'NZXT H5 Flow Case', 'Mid-tower airflow focused, tempered glass, support ATX, cable management', 12, 25, 1, '6.80', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(28, 'BIOS-AMI-MEG', '8901234567917', 'AMI MegaRAC BIOS Chip', 'BIOS chip untuk motherboard server, SPI interface, 32MB capacity', 5, 28, 1, '0.01', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30'),
(29, 'NVRAM-ST-M24', '8901234567918', 'ST Microelectronics NVRAM 256KB', 'Non-volatile RAM 256KB, I2C interface, untuk menyimpan konfigurasi sistem', 6, 28, 1, '0.01', 1, '2026-05-01 00:07:30', '2026-05-01 00:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `po_id` int(11) NOT NULL,
  `po_number` varchar(50) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` enum('draft','submitted','approved','sent','partial_received','received','cancelled') DEFAULT 'draft',
  `total_amount` decimal(14,2) DEFAULT 0.00,
  `created_by` int(11) NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`po_id`, `po_number`, `supplier_id`, `location_id`, `order_date`, `status`, `total_amount`, `created_by`, `approved_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'PO-20260501-0001', 1, 1, '2026-05-01', 'received', '12500000.00', 2, 5, 'Pemesanan Intel CPU karena stok menipis di Gudang Jakarta', '2026-05-01 04:13:01', '2026-05-01 04:13:01'),
(2, 'PO-20260502-0002', 4, 1, '2026-05-02', 'received', '18500000.00', 2, 5, 'Pemesanan GPU ASUS untuk kebutuhan proyek', '2026-05-01 04:13:01', '2026-05-01 04:13:01'),
(3, 'PO-20260503-0003', 7, 2, '2026-05-03', 'partial_received', '8250000.00', 3, 5, 'Pemesanan RAM Kingston untuk Gudang Bekasi', '2026-05-01 04:13:01', '2026-05-01 04:13:01'),
(4, 'PO-20260504-0004', 10, 1, '2026-05-04', 'submitted', '3750000.00', 2, NULL, 'Pemesanan SSD Samsung untuk restock', '2026-05-01 04:13:01', '2026-05-01 04:13:01'),
(5, 'PO-20260505-0005', 6, 1, '2026-05-05', 'draft', '0.00', 2, NULL, 'Draft PO untuk PSU Corsair', '2026-05-01 04:13:01', '2026-05-01 04:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderdetail`
--

CREATE TABLE `purchaseorderdetail` (
  `po_detail_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `quantity_received` int(11) DEFAULT 0,
  `unit_cost` decimal(12,2) NOT NULL,
  `total_cost` decimal(14,2) GENERATED ALWAYS AS (`quantity_ordered` * `unit_cost` * (1 - `discount_percent` / 100)) STORED,
  `discount_percent` decimal(5,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseorderdetail`
--

INSERT INTO `purchaseorderdetail` (`po_detail_id`, `po_id`, `product_id`, `quantity_ordered`, `quantity_received`, `unit_cost`, `discount_percent`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 20, 20, '350000.00', '5.00', 'Intel Core i9-13900K - diskon 5%', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(2, 1, 3, 15, 15, '250000.00', '0.00', 'Intel Core i7-13700K - full price', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(3, 2, 5, 10, 10, '1750000.00', '0.00', 'ASUS ROG Strix RTX 4070 Ti - tanpa diskon', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(4, 2, 7, 8, 8, '1250000.00', '0.00', 'NVIDIA RTX 4060 - untuk entry level', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(5, 3, 12, 50, 30, '125000.00', '0.00', 'Kingston Fury Beast DDR5 16GB - baru datang 30 unit', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(6, 3, 12, 30, 0, '120000.00', '5.00', 'Kingston RAM tambahan - diskon 5% (belum datang)', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(7, 4, 14, 25, 0, '150000.00', '0.00', 'Samsung 980 Pro SSD 1TB - menunggu approval', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(8, 4, 15, 10, 0, '175000.00', '10.00', 'WD Black SN850X 2TB - diskon 10%', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(9, 5, 10, 10, 0, '250000.00', '0.00', 'Corsair Vengeance DDR5 32GB - draft PO', '2026-05-01 04:13:28', '2026-05-01 04:13:28'),
(10, 5, 19, 5, 0, '350000.00', '0.00', 'Seasonic Focus Plus 850W - draft PO', '2026-05-01 04:13:28', '2026-05-01 04:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_code` varchar(20) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `level` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_code`, `role_name`, `description`, `level`, `is_active`) VALUES
(1, 'SUPERADMIN', 'Super Administrator', 'Akses penuh ke seluruh modul sistem dan pengaturan...', 1, 1),
(2, 'WH_MGR', 'Warehouse Manager', 'Mengelola operasional gudang, menyetujui transfer ...', 2, 1),
(3, 'LOG_STAFF', 'Logistics Staff', 'Melakukan input transaksi masuk/keluar barang dan ...', 3, 1),
(4, 'PROCUREMENT', 'Procurement Officer', 'Bertanggung jawab atas pembelian barang (Purchase ...', 3, 1),
(5, 'VIEWER', 'Guest/Viewer', 'Hanya memiliki akses baca (read-only) untuk memant...', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `shipment_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `shipped_date` timestamp NULL DEFAULT NULL,
  `shipped_by` int(11) DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `status` enum('pending','ready','in_transit','delivered','cancelled') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`shipment_id`, `location_id`, `shipped_date`, `shipped_by`, `received_by`, `vehicle_id`, `driver_id`, `transfer_id`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 3, '2026-04-21 01:00:00', 2, 3, 1, 1, 1, 'delivered', 'Pengiriman Intel CPU dan Motherboard ke Site Bekasi - Diterima Logistik Bekasi', '2026-04-21 00:00:00', '2026-04-21 08:30:00'),
(2, 4, '2026-04-22 02:00:00', 2, 4, 2, 2, 2, 'delivered', 'Pengiriman RTX 4090 dan RAM ke Site Cibitung - Diterima Logistik Cibitung', '2026-04-22 01:00:00', '2026-04-22 09:45:00'),
(3, 5, '2026-04-23 03:00:00', 5, 6, 3, 3, 3, 'delivered', 'Pengiriman Intel i7 dan SSD ke Site Karawang - Diterima Staff Finance', '2026-04-23 02:30:00', '2026-04-23 08:30:00'),
(4, 3, '2026-04-24 00:30:00', 2, 3, 5, 5, 4, 'delivered', 'Pengiriman tambahan CPU dan SSD ke Site Bekasi - Diterima Logistik Bekasi', '2026-04-24 00:00:00', '2026-04-24 06:00:00'),
(5, 4, '2026-04-25 03:00:00', 2, NULL, 2, 2, 5, 'in_transit', 'Pengiriman RAM dan PSU ke Site Cibitung - sedang dalam perjalanan', '2026-04-25 02:00:00', '2026-04-25 03:00:00'),
(6, 5, NULL, 1, NULL, 7, 7, 6, 'pending', 'Menunggu jadwal pengiriman ke Site Karawang - Driver Galih, Van B 3344 STU', '2026-04-26 01:00:00', '2026-04-26 01:00:00'),
(7, 3, NULL, 2, NULL, NULL, NULL, 7, 'cancelled', 'Pengiriman dibatalkan karena stok produk tidak mencukupi', '2026-04-27 03:00:00', '2026-04-27 03:30:00'),
(8, 4, '2026-04-28 01:00:00', 5, NULL, 7, 7, 8, 'in_transit', 'Pengiriman GPU dan Heatsink ke Site Cibitung - dalam perjalanan', '2026-04-28 00:00:00', '2026-04-28 01:00:00'),
(9, 5, NULL, 2, NULL, 1, 1, 9, 'pending', 'Pengiriman pending untuk restock Site Karawang', '2026-04-29 02:00:00', '2026-04-29 02:00:00'),
(10, 3, '2026-04-30 02:00:00', 5, NULL, 3, 3, 10, 'in_transit', 'Pengiriman CPU dan GPU ke Site Bekasi - dalam perjalanan', '2026-04-30 01:00:00', '2026-04-30 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stockmovement`
--

CREATE TABLE `stockmovement` (
  `movement_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `previous_quantity` int(11) NOT NULL,
  `new_quantity` int(11) NOT NULL,
  `movement_type` enum('IN_purchase','IN_transfer','IN_return','IN_adjustment_plus','OUT_sale','OUT_transfer','OUT_damage','OUT_expired','OUT_adjustment_minus','OUT_usage') NOT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockmovement`
--

INSERT INTO `stockmovement` (`movement_id`, `product_id`, `location_id`, `quantity_change`, `previous_quantity`, `new_quantity`, `movement_type`, `reference_type`, `reference_id`, `created_by`, `notes`, `created_at`) VALUES
(1, 1, 1, -10, 50, 40, 'OUT_transfer', 'transfer_header', 1, 2, 'Transfer 10 unit Intel CPU ke Site Bekasi', '2026-04-21 01:00:00'),
(2, 1, 3, 10, 5, 15, 'IN_transfer', 'transfer_header', 1, 3, 'Terima 10 unit Intel CPU dari Gudang Jakarta', '2026-04-21 08:30:00'),
(3, 4, 1, -8, 10, 2, 'OUT_transfer', 'transfer_header', 2, 2, 'Transfer 8 unit RTX 4090 ke Site Cibitung', '2026-04-22 02:00:00'),
(4, 4, 4, 8, 3, 11, 'IN_transfer', 'transfer_header', 2, 4, 'Terima 8 unit RTX 4090 dari Gudang Jakarta', '2026-04-22 09:45:00'),
(5, 14, 1, -10, 75, 65, 'OUT_transfer', 'transfer_header', 3, 5, 'Transfer 10 unit Samsung SSD ke Site Karawang', '2026-04-23 03:00:00'),
(6, 14, 5, 10, 8, 18, 'IN_transfer', 'transfer_header', 3, 6, 'Terima 10 unit Samsung SSD dari Gudang Jakarta', '2026-04-23 08:30:00'),
(7, 1, 3, -2, 15, 13, 'OUT_usage', 'project_usage', 101, 3, 'Penggunaan 2 unit Intel CPU untuk proyek server kantor', '2026-04-25 02:00:00'),
(8, 11, 3, -4, 10, 6, 'OUT_usage', 'project_usage', 101, 3, 'Penggunaan 4 unit RAM untuk upgrade komputer staff', '2026-04-25 03:00:00'),
(9, 4, 4, -1, 11, 10, 'OUT_usage', 'project_usage', 102, 4, 'Penggunaan 1 unit RTX 4090 untuk project rendering', '2026-04-26 07:00:00'),
(10, 22, 5, -3, 10, 7, 'OUT_usage', 'maintenance', 201, 6, 'Penggunaan 3 unit Noctua Fan untuk maintenance server', '2026-04-27 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_code` varchar(20) NOT NULL,
  `supplier_name` varchar(150) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  `supplier_phone` varchar(20) DEFAULT NULL,
  `supplier_address` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `contact_person`, `supplier_email`, `supplier_phone`, `supplier_address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SUP-INTEL-01', 'Intel Technology Indonesia', 'Budi Santoso', 'procurement@intel.co.id', '021-5551001', 'Jl. TB Simatupang No. 89, Cilandak, Jakarta Selatan, DKI Jakarta 12560', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(2, 'SUP-AMD-02', 'AMD Indonesia Distributor', 'Dewi Permata', 'sales@amd.co.id', '021-5551002', 'Jl. Gatot Subroto Kav. 56, Kuningan, Jakarta Selatan, DKI Jakarta 12950', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(3, 'SUP-NVIDIA-03', 'NVIDIA Indonesia', 'Rizky Wijaya', 'purchase@nvidia.co.id', '021-5551003', 'Jl. MH Thamrin No. 12, Menteng, Jakarta Pusat, DKI Jakarta 10340', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(4, 'SUP-ASUS-04', 'ASUSTeK Computer Indonesia', 'Siti Nurhaliza', 'procurement@asus.co.id', '021-5551004', 'Jl. Raya Serpong KM 10, BSD City, Tangerang Selatan, Banten 15310', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(5, 'SUP-MS-05', 'MSI Indonesia', 'Agus Hermawan', 'sales@msi.co.id', '021-5551005', 'Jl. Boulevard Raya Kav. 8, Kelapa Gading, Jakarta Utara, DKI Jakarta 14240', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(6, 'SUP-CORSAIR-06', 'Corsair Indonesia', 'Linda Susanti', 'logistic@corsair.co.id', '021-5551006', 'Jl. Raya Kalimalang Kav. 23, Bekasi Timur, Bekasi, Jawa Barat 17113', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(7, 'SUP-KINGSTON-07', 'Kingston Technology Indonesia', 'Hendra Gunawan', 'procurement@kingston.co.id', '021-5551007', 'Jl. Jenderal Sudirman Kav. 45, Senayan, Jakarta Pusat, DKI Jakarta 12190', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(8, 'SUP-SAMSUNG-08', 'Samsung Electronics Indonesia', 'Yulia Wulandari', 'purchase@samsung.co.id', '021-5551008', 'Jl. BSD Grand Boulevard No. 1, BSD City, Tangerang, Banten 15339', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(9, 'SUP-WD-09', 'Western Digital Indonesia', 'Fajar Nugroho', 'sales@wdc.co.id', '021-5551009', 'Jl. Ciputat Raya No. 78, Pondok Pinang, Jakarta Selatan, DKI Jakarta 12310', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14'),
(10, 'SUP-SEAGATE-10', 'Seagate Technology Indonesia', 'Rina Marlina', 'procurement@seagate.co.id', '021-5551010', 'Jl. Sunter Paradise Blok E No. 15, Sunter Agung, Jakarta Utara, DKI Jakarta 14350', 1, '2026-05-01 00:12:14', '2026-05-01 00:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `timlogistik`
--

CREATE TABLE `timlogistik` (
  `logistik_id` int(11) NOT NULL,
  `logistik_name` varchar(30) NOT NULL,
  `location_id` int(11) NOT NULL,
  `position` enum('supervisor','coordinator','staff','Manager') NOT NULL,
  `shift` enum('morning','afternoon','night','nonshift') NOT NULL,
  `join_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timlogistik`
--

INSERT INTO `timlogistik` (`logistik_id`, `logistik_name`, `location_id`, `position`, `shift`, `join_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin_jkt', 1, 'Manager', 'nonshift', '2024-01-15', 1, '2026-05-01 03:53:23', '2026-05-01 03:53:23'),
(2, 'manager_jkt', 1, 'Manager', 'nonshift', '2024-01-10', 1, '2026-05-01 03:53:23', '2026-05-01 03:53:23'),
(3, 'logistik_jkt', 1, 'staff', 'morning', '2024-02-01', 1, '2026-05-01 03:53:23', '2026-05-01 03:53:23'),
(4, 'driver_jkt', 1, 'staff', 'morning', '2024-02-10', 1, '2026-05-01 03:53:23', '2026-05-01 03:53:23'),
(5, 'logistik_bdg', 3, 'coordinator', 'morning', '2024-03-01', 1, '2026-05-01 03:53:23', '2026-05-01 03:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `transferrequest`
--

CREATE TABLE `transferrequest` (
  `transfer_request_id` int(11) NOT NULL,
  `request_number` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `requested_quantity` int(11) NOT NULL,
  `status` enum('pending','approved','rejected','cancelled','fulfilled') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `requested_by` int(11) NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `requested_date` timestamp NULL DEFAULT current_timestamp(),
  `approved_date` timestamp NULL DEFAULT NULL,
  `fulfilled_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transferrequest`
--

INSERT INTO `transferrequest` (`transfer_request_id`, `request_number`, `product_id`, `location_id`, `requested_quantity`, `status`, `notes`, `requested_by`, `approved_by`, `requested_date`, `approved_date`, `fulfilled_date`, `created_at`, `updated_at`) VALUES
(1, 'REQ-20260501-0001', 1, 1, 10, 'fulfilled', 'Site Bekasi kehabisan stok Intel CPU, request ke Gudang Jakarta', 3, 1, '2026-05-01 01:00:00', '2026-05-01 02:00:00', '2026-05-03 08:30:00', '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(2, 'REQ-20260502-0002', 4, 1, 5, 'fulfilled', 'Site Cibitung butuh RTX 4090 untuk proyek rendering', 4, 1, '2026-05-02 02:00:00', '2026-05-02 03:00:00', '2026-05-04 09:45:00', '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(3, 'REQ-20260503-0003', 11, 1, 20, 'approved', 'Site Karawang butuh RAM untuk upgrade komputer staff', 6, 2, '2026-05-03 03:00:00', '2026-05-03 07:00:00', NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(4, 'REQ-20260504-0004', 14, 1, 15, 'pending', 'Site Bekasi butuh SSD untuk proyek server - menunggu approval', 3, NULL, '2026-05-04 01:30:00', NULL, NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(5, 'REQ-20260505-0005', 8, 2, 8, 'approved', 'Site Cibitung butuh motherboard untuk rakitan baru', 4, 3, '2026-05-05 02:00:00', '2026-05-05 04:00:00', NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(6, 'REQ-20260506-0006', 19, 1, 10, 'pending', 'Site Karawang butuh PSU untuk server baru - menunggu persetujuan', 6, NULL, '2026-05-06 03:00:00', NULL, NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(7, 'REQ-20260507-0007', 22, 1, 20, 'rejected', 'Site Bekasi request fan pendingin - stok gudang sedang kosong', 3, 1, '2026-05-07 01:00:00', '2026-05-07 02:30:00', NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(8, 'REQ-20260508-0008', 12, 2, 30, 'pending', 'Site Cibitung butuh RAM Kingston untuk upgrade komputer', 4, NULL, '2026-05-08 04:00:00', NULL, NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(9, 'REQ-20260509-0009', 5, 1, 3, 'cancelled', 'Site Karawang request GPU - dibatalkan karena perubahan kebutuhan proyek', 6, 2, '2026-05-09 02:00:00', '2026-05-09 03:00:00', NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37'),
(10, 'REQ-20260510-0010', 1, 1, 15, 'pending', 'Site Cibitung butuh Intel CPU tambahan untuk proyek AI', 4, NULL, '2026-05-10 01:00:00', NULL, NULL, '2026-05-01 04:25:37', '2026-05-01 04:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_detail`
--

CREATE TABLE `transfer_detail` (
  `transfer_detail_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_shipped` int(11) DEFAULT 0,
  `quantity_received` int(11) DEFAULT 0,
  `status` enum('pending','shipped','received','cancelled') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transfer_detail`
--

INSERT INTO `transfer_detail` (`transfer_detail_id`, `transfer_id`, `product_id`, `quantity`, `quantity_shipped`, `quantity_received`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 10, 10, 'received', 'Intel Core i9-13900K untuk Site Bekasi', '2026-04-21 00:00:00', '2026-04-21 00:00:00'),
(2, 1, 8, 5, 5, 5, 'received', 'ASUS ROG Maximus Z790 untuk Site Bekasi', '2026-04-21 00:00:00', '2026-04-21 00:00:00'),
(3, 2, 4, 8, 8, 8, 'received', 'NVIDIA RTX 4090 untuk Site Cibitung', '2026-04-22 01:00:00', '2026-04-22 01:00:00'),
(4, 2, 11, 15, 15, 15, 'received', 'Corsair Vengeance DDR5 32GB untuk Site Cibitung', '2026-04-22 01:00:00', '2026-04-22 01:00:00'),
(5, 3, 3, 6, 6, 6, 'received', 'Intel Core i7-13700K untuk Site Karawang', '2026-04-23 02:30:00', '2026-04-23 02:30:00'),
(6, 3, 14, 10, 10, 10, 'received', 'Samsung 980 Pro SSD 1TB untuk Site Karawang', '2026-04-23 02:30:00', '2026-04-23 02:30:00'),
(7, 4, 1, 5, 5, 5, 'received', 'Intel Core i9-13900K tambahan untuk Site Bekasi', '2026-04-24 00:00:00', '2026-04-24 00:00:00'),
(8, 4, 15, 8, 8, 8, 'received', 'WD Black SN850X 2TB untuk Site Bekasi', '2026-04-24 00:00:00', '2026-04-24 00:00:00'),
(9, 5, 12, 20, 20, 0, 'shipped', 'Kingston Fury Beast DDR5 16GB untuk Site Cibitung', '2026-04-25 02:00:00', '2026-04-25 03:00:00'),
(10, 5, 19, 4, 4, 0, 'shipped', 'Seasonic Focus Plus 850W untuk Site Cibitung', '2026-04-25 02:00:00', '2026-04-25 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_header`
--

CREATE TABLE `transfer_header` (
  `transfer_id` int(11) NOT NULL,
  `transfer_number` varchar(50) NOT NULL,
  `location_id` int(11) NOT NULL,
  `logistik_id` int(11) DEFAULT NULL,
  `transfer_date` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('draft','pending','picking','shipped','received','cancelled') DEFAULT 'draft',
  `received_date` timestamp NULL DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transfer_header`
--

INSERT INTO `transfer_header` (`transfer_id`, `transfer_number`, `location_id`, `logistik_id`, `transfer_date`, `status`, `received_date`, `received_by`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'TRF-20260421-0001', 3, 1, '2026-04-21 00:00:00', 'received', '2026-04-21 08:30:00', 3, 'Transfer Gudang Jakarta ke Site Bekasi - CPU dan Motherboard', 1, '2026-04-21 00:00:00', '2026-04-21 08:30:00'),
(2, 'TRF-20260422-0002', 4, 3, '2026-04-22 01:00:00', 'received', '2026-04-22 09:45:00', 4, 'Transfer Gudang Jakarta ke Site Cibitung - GPU dan RAM', 2, '2026-04-22 01:00:00', '2026-04-22 09:45:00'),
(3, 'TRF-20260423-0003', 5, 1, '2026-04-23 02:30:00', 'received', '2026-04-23 08:30:00', 6, 'Transfer Gudang Jakarta ke Site Karawang - CPU dan SSD', 1, '2026-04-23 02:30:00', '2026-04-23 08:30:00'),
(4, 'TRF-20260424-0004', 3, 3, '2026-04-24 00:00:00', 'received', '2026-04-24 06:00:00', 3, 'Transfer tambahan CPU dan SSD ke Site Bekasi', 2, '2026-04-24 00:00:00', '2026-04-24 06:00:00'),
(5, 'TRF-20260425-0005', 4, 1, '2026-04-25 02:00:00', 'shipped', NULL, NULL, 'Transfer RAM dan PSU ke Site Cibitung - dalam perjalanan', 1, '2026-04-25 02:00:00', '2026-04-25 03:00:00'),
(6, 'TRF-20260426-0006', 5, 2, '2026-04-26 01:00:00', 'pending', NULL, NULL, 'Transfer pending menunggu proses picking untuk Site Karawang', 5, '2026-04-26 01:00:00', '2026-04-26 01:00:00'),
(7, 'TRF-20260427-0007', 3, 1, '2026-04-27 03:00:00', 'cancelled', NULL, NULL, 'Transfer dibatalkan karena stok produk tidak mencukupi', 2, '2026-04-27 03:00:00', '2026-04-27 03:30:00'),
(8, 'TRF-20260428-0008', 4, 3, '2026-04-28 00:00:00', 'shipped', NULL, NULL, 'Transfer GPU dan Heatsink ke Site Cibitung', 1, '2026-04-28 00:00:00', '2026-04-28 01:00:00'),
(9, 'TRF-20260429-0009', 5, 2, '2026-04-29 02:00:00', 'pending', NULL, NULL, 'Transfer pending untuk restock Site Karawang', 5, '2026-04-29 02:00:00', '2026-04-29 02:00:00'),
(10, 'TRF-20260430-0010', 3, 3, '2026-04-30 01:00:00', 'shipped', NULL, NULL, 'Transfer CPU dan GPU ke Site Bekasi - dalam perjalanan', 2, '2026-04-30 01:00:00', '2026-04-30 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `unitofmeasure`
--

CREATE TABLE `unitofmeasure` (
  `uom_id` int(11) NOT NULL,
  `uom_code` varchar(10) NOT NULL,
  `uom_name` varchar(50) NOT NULL,
  `conversion_factor` decimal(10,4) DEFAULT 1.0000,
  `is_base` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unitofmeasure`
--

INSERT INTO `unitofmeasure` (`uom_id`, `uom_code`, `uom_name`, `conversion_factor`, `is_base`) VALUES
(1, 'PCS', 'Piece / Buah', '1.0000', 1),
(2, 'UNIT', 'Unit', '1.0000', 1),
(3, 'BOX', 'Box', '10.0000', 0),
(4, 'PACK', 'Pack', '5.0000', 0),
(5, 'SET', 'Set', '1.0000', 0),
(6, 'GR', 'Gram', '1.0000', 1),
(7, 'KG', 'Kilogram', '1000.0000', 0),
(8, 'GB', 'Gigabyte', '1.0000', 1),
(9, 'TB', 'Terabyte', '1000.0000', 0),
(10, 'MB', 'Megabyte', '0.0010', 0),
(11, 'LOT', 'Lot', '25.0000', 0),
(12, 'DOZ', 'Dozen', '12.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password_hash`, `full_name`, `email`, `phone`, `role_id`, `location_id`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Super Administrator', 'superadmin@logistik.com', '0812111111', 1, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(2, 'admin_jkt', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Admin Gudang Jakarta', 'admin.jkt@logistik.com', '0812121212', 2, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(3, 'logistik_jkt', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Logistik Gudang Jakarta', 'log.jkt@logistik.com', '0812131313', 3, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(4, 'logistik_bdg', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Logistik Site Bandung', 'log.bdg@logistik.com', '0812141414', 4, 3, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(5, 'manager_jkt', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Manager Operasional', 'manager@logistik.com', '0812151515', 5, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(6, 'finance_jkt', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Staff Finance', 'finance@logistik.com', '0812161616', 6, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58'),
(7, 'driver_jkt', '$2a$10$N9qo8uLOickgx2ZMRZoMy.MrJQkKqE5eD6Xk7QnYqWXhYVpWpMlW', 'Driver Armada', 'driver@logistik.com', '0812171717', 7, 1, 1, NULL, '2026-04-25 22:32:58', '2026-04-25 22:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_code` varchar(20) NOT NULL,
  `plate_number` varchar(20) NOT NULL,
  `vehicle_type` enum('truck','van','motorcycle') NOT NULL,
  `capacity_kg` int(11) DEFAULT NULL,
  `capacity_volume` decimal(10,2) DEFAULT NULL,
  `status` enum('available','on_delivery','maintenance') DEFAULT 'available',
  `last_maintenance` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_code`, `plate_number`, `vehicle_type`, `capacity_kg`, `capacity_volume`, `status`, `last_maintenance`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'VCL-001', 'B 1234 ABC', 'truck', 5000, '20.00', 'available', '2026-03-15', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(2, 'VCL-002', 'B 5678 DEF', 'van', 1500, '8.00', 'on_delivery', '2026-04-01', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(3, 'VCL-003', 'B 9012 GHI', 'motorcycle', 50, '0.50', 'available', '2026-02-20', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(4, 'VCL-004', 'B 3456 JKL', 'van', 1200, '6.50', 'maintenance', '2026-01-10', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(5, 'VCL-005', 'B 7890 MNO', 'truck', 8000, '25.00', 'available', '2026-03-28', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(6, 'VCL-006', 'B 1122 PQR', 'motorcycle', 40, '0.40', 'on_delivery', '2026-03-05', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(7, 'VCL-007', 'B 3344 STU', 'van', 1300, '7.00', 'available', '2026-02-14', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(8, 'VCL-008', 'B 5566 VWX', 'truck', 6000, '22.00', 'available', '2026-04-10', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(9, 'VCL-009', 'B 7788 YZA', 'motorcycle', 60, '0.60', 'available', '2026-03-18', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04'),
(10, 'VCL-010', 'B 9900 BCD', 'van', 1400, '7.50', 'on_delivery', '2026-03-25', 1, '2026-05-01 00:55:04', '2026-05-01 00:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`),
  ADD UNIQUE KEY `brand_code` (`brand_code`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_code` (`category_code`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `driver_code` (`driver_code`),
  ADD UNIQUE KEY `license_number` (`license_number`),
  ADD KEY `idx_driver_code` (`driver_code`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `goodsreceipt`
--
ALTER TABLE `goodsreceipt`
  ADD PRIMARY KEY (`gr_id`),
  ADD UNIQUE KEY `gr_number` (`gr_number`),
  ADD KEY `idx_gr_number` (`gr_number`),
  ADD KEY `idx_po_id` (`po_id`),
  ADD KEY `idx_location_id` (`location_id`),
  ADD KEY `idx_receipt_date` (`receipt_date`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `received_by` (`received_by`);

--
-- Indexes for table `goodsreceiptdetail`
--
ALTER TABLE `goodsreceiptdetail`
  ADD PRIMARY KEY (`gr_detail_id`),
  ADD KEY `idx_gr_id` (`gr_id`),
  ADD KEY `idx_po_detail_id` (`po_detail_id`),
  ADD KEY `idx_batch_number` (`batch_number`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD UNIQUE KEY `inventory_code` (`inventory_code`),
  ADD UNIQUE KEY `uk_inventory_code` (`inventory_code`),
  ADD UNIQUE KEY `uk_product_location` (`product_id`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_code` (`location_code`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `uom_id` (`uom_id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`po_id`),
  ADD UNIQUE KEY `po_number` (`po_number`),
  ADD KEY `idx_po_number` (`po_number`),
  ADD KEY `idx_supplier_id` (`supplier_id`),
  ADD KEY `idx_location_id` (`location_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_order_date` (`order_date`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `purchaseorderdetail`
--
ALTER TABLE `purchaseorderdetail`
  ADD PRIMARY KEY (`po_detail_id`),
  ADD KEY `idx_po_id` (`po_id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_code` (`role_code`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `from_location_id` (`location_id`),
  ADD KEY `shipped_by` (`shipped_by`),
  ADD KEY `idx_vehicle_id` (`vehicle_id`),
  ADD KEY `idx_driver_id` (`driver_id`),
  ADD KEY `idx_transfer_id` (`transfer_id`),
  ADD KEY `idx_received_by` (`received_by`);

--
-- Indexes for table `stockmovement`
--
ALTER TABLE `stockmovement`
  ADD PRIMARY KEY (`movement_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_location_id` (`location_id`),
  ADD KEY `idx_movement_type` (`movement_type`),
  ADD KEY `idx_reference` (`reference_type`,`reference_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_code` (`supplier_code`);

--
-- Indexes for table `timlogistik`
--
ALTER TABLE `timlogistik`
  ADD PRIMARY KEY (`logistik_id`),
  ADD UNIQUE KEY `logistik_name` (`logistik_name`),
  ADD KEY `idx_logistik_name` (`logistik_name`),
  ADD KEY `idx_location_id` (`location_id`),
  ADD KEY `idx_position` (`position`),
  ADD KEY `idx_shift` (`shift`);

--
-- Indexes for table `transferrequest`
--
ALTER TABLE `transferrequest`
  ADD PRIMARY KEY (`transfer_request_id`),
  ADD UNIQUE KEY `request_number` (`request_number`),
  ADD KEY `idx_request_number` (`request_number`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_location_id` (`location_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_requested_by` (`requested_by`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `transfer_detail`
--
ALTER TABLE `transfer_detail`
  ADD PRIMARY KEY (`transfer_detail_id`),
  ADD KEY `idx_transfer_id` (`transfer_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `transfer_header`
--
ALTER TABLE `transfer_header`
  ADD PRIMARY KEY (`transfer_id`),
  ADD UNIQUE KEY `transfer_number` (`transfer_number`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `received_by` (`received_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `fk_transfer_header_logistik` (`logistik_id`);

--
-- Indexes for table `unitofmeasure`
--
ALTER TABLE `unitofmeasure`
  ADD PRIMARY KEY (`uom_id`),
  ADD UNIQUE KEY `uom_code` (`uom_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uk_username` (`username`),
  ADD UNIQUE KEY `uk_email` (`email`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `vehicle_code` (`vehicle_code`),
  ADD UNIQUE KEY `plate_number` (`plate_number`),
  ADD KEY `idx_plate_number` (`plate_number`),
  ADD KEY `idx_vehicle_type` (`vehicle_type`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `goodsreceipt`
--
ALTER TABLE `goodsreceipt`
  MODIFY `gr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `goodsreceiptdetail`
--
ALTER TABLE `goodsreceiptdetail`
  MODIFY `gr_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchaseorderdetail`
--
ALTER TABLE `purchaseorderdetail`
  MODIFY `po_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stockmovement`
--
ALTER TABLE `stockmovement`
  MODIFY `movement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timlogistik`
--
ALTER TABLE `timlogistik`
  MODIFY `logistik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transferrequest`
--
ALTER TABLE `transferrequest`
  MODIFY `transfer_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfer_detail`
--
ALTER TABLE `transfer_detail`
  MODIFY `transfer_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfer_header`
--
ALTER TABLE `transfer_header`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unitofmeasure`
--
ALTER TABLE `unitofmeasure`
  MODIFY `uom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `goodsreceipt`
--
ALTER TABLE `goodsreceipt`
  ADD CONSTRAINT `goodsreceipt_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchaseorder` (`po_id`),
  ADD CONSTRAINT `goodsreceipt_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `goodsreceipt_ibfk_3` FOREIGN KEY (`received_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `goodsreceiptdetail`
--
ALTER TABLE `goodsreceiptdetail`
  ADD CONSTRAINT `goodsreceiptdetail_ibfk_1` FOREIGN KEY (`gr_id`) REFERENCES `goodsreceipt` (`gr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goodsreceiptdetail_ibfk_2` FOREIGN KEY (`po_detail_id`) REFERENCES `purchaseorderdetail` (`po_detail_id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`uom_id`) REFERENCES `unitofmeasure` (`uom_id`);

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `purchaseorder_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `purchaseorder_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `purchaseorderdetail`
--
ALTER TABLE `purchaseorderdetail`
  ADD CONSTRAINT `purchaseorderdetail_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchaseorder` (`po_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchaseorderdetail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `fk_shipment_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_shipment_received_by` FOREIGN KEY (`received_by`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_shipment_transfer` FOREIGN KEY (`transfer_id`) REFERENCES `transfer_header` (`transfer_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_shipment_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`shipped_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `stockmovement`
--
ALTER TABLE `stockmovement`
  ADD CONSTRAINT `stockmovement_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `stockmovement_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `stockmovement_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `timlogistik`
--
ALTER TABLE `timlogistik`
  ADD CONSTRAINT `timlogistik_ibfk_1` FOREIGN KEY (`logistik_name`) REFERENCES `user` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `timlogistik_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON UPDATE CASCADE;

--
-- Constraints for table `transferrequest`
--
ALTER TABLE `transferrequest`
  ADD CONSTRAINT `transferrequest_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `transferrequest_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `transferrequest_ibfk_3` FOREIGN KEY (`requested_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `transferrequest_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `timlogistik` (`logistik_id`);

--
-- Constraints for table `transfer_header`
--
ALTER TABLE `transfer_header`
  ADD CONSTRAINT `fk_transfer_header_logistik` FOREIGN KEY (`logistik_id`) REFERENCES `timlogistik` (`logistik_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_header_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `transfer_header_ibfk_3` FOREIGN KEY (`received_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `transfer_header_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
