//Subtracts Tickets for a Player Redeploy
WaitUntil {time > 1};

Switch (side player) do {
	Case East: {
		RedTickets = RedTickets - 24;
		PublicVariable "RedTickets";
	};
	Case West: {
		BluTickets = BluTickets - 24;
		PublicVariable "BluTickets";
	};
};