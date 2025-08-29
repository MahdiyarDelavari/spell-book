import { procedure, router } from "../trpc";
import { z } from "zod";

export const spellsRouter = router({
	get: procedure.query(() => {
		return [];
	}),
});
