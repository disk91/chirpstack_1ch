// This must return the name of the ADR algorithm.
export function name() {
    return "Single Channel / SF12 ADR";
}

// This must return the id of the ADR algorithm.
export function id() {
    return "single-channel-sf12-adr";
}

export function handle(req) {
    let resp = {
        dr: 0,
        txPowerIndex: req.maxTxPowerIndex,
        nbTrans: 5
    }
    return resp;
}