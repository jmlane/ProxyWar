//Subtracts Tickets for a Player Redeploy
WaitUntil {time > 1};

Switch (side player) do {
	Case East: {
		RedTickets = RedTickets - 12;
		PublicVariable "RedTickets";
	};
	Case West: {
		BluTickets = BluTickets - 12;
		PublicVariable "BluTickets";
	};
};