"use client";

import { trpc } from "@/server/client";

export default function Home() {

  const spells = trpc.spells.get.useQuery()
  return (
    <div className="flex items-center justify-center min-h-screen">
      <div className="bg-blue-900 p-30" >
        {JSON.stringify(spells.data)}
      </div>
    </div>
  );
}
