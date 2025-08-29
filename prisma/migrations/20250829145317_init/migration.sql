-- CreateTable
CREATE TABLE "SpellBook" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT
);

-- CreateTable
CREATE TABLE "Spell" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT,
    "image" TEXT,
    "spellbookId" INTEGER NOT NULL,
    CONSTRAINT "Spell_spellbookId_fkey" FOREIGN KEY ("spellbookId") REFERENCES "SpellBook" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "SpellBook_title_key" ON "SpellBook"("title");
