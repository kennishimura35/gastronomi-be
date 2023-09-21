const { Router } = require("express");
const authRouter = require("./authRouter");
const userRouter = require("./userRouter");
const kecamatanRouter = require("./kecamatanRouter");
const joinRouter = require("./joinRouter")
const kudapanRouter = require("./kudapanRouter")
const rumahMakanRouter = require("./rumahMakanRouter")
const berandaRouter = require("./berandaRouter")
const sliderRouter = require("./sliderRouter")

const routes = Router();
routes.use("/auth", authRouter);

routes.use("/users", userRouter);
routes.use("/kecamatan", kecamatanRouter);
routes.use("/join", joinRouter);
routes.use("/kudapan", kudapanRouter);
routes.use("/rumahMakan", rumahMakanRouter);
routes.use("/beranda", berandaRouter);
routes.use("/slider", sliderRouter);

module.exports = routes;
