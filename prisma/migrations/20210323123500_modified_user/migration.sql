/*
  Warnings:

  - You are about to drop the column `createAt` on the `Hashtag` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `Hashtag` table. All the data in the column will be lost.
  - You are about to drop the column `createAt` on the `Photo` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `Photo` table. All the data in the column will be lost.
  - Added the required column `updatedAt` to the `Hashtag` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Photo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Hashtag" DROP COLUMN "createAt",
DROP COLUMN "updateAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Photo" DROP COLUMN "createAt",
DROP COLUMN "updateAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;
