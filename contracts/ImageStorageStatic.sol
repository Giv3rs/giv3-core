// SPDX-License-Identifier: GPL-3.0

// Storage contract for individual collections
pragma solidity ^0.8.10;

import "./interface/IImageStorage.sol";

contract ImageStorageStatic is IImageStorage {
    mapping(uint256 => string) public shoes;
    mapping(uint256 => string) public clothes;
    mapping(uint256 => string) public necklace;
    mapping(uint256 => string) public glasses;
    mapping(uint256 => string) public hat;

    constructor() {
        // clothes[
        //     0
        // ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjQiIGhlaWdodD0iMTE0IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzQuNTE0LjA3OWMtMi4wMzUuMjItNS4xNTYuOTktNi41NjcgMS42Mi0uOTg4LjQ0LTMuMTY1IDEuNTI1LTMuNzIxIDEuODU0LTEuODUyIDEuMDk3LTQuNzggMy42NzctNS41MTcgNC44Ni0uMjAyLjMyNS0uODQyIDEuMzIxLTEuNDIyIDIuMjEzLTEuOTUxIDMtMy4wMDcgNS40ODMtMy43NCA4Ljc5LS40NjEgMi4wODQtLjQ2MSA1LjEyNSAwIDcuMzEuOTUyIDQuNTAxIDIuMTM3IDcuNjA1IDQuMTU1IDEwLjg4IDEuNDI1IDIuMzEzIDIuOTg4IDQuNzQ4IDMuMjQgNS4wNS4wOC4wOTcuMzYuNDk2LjYyMy44ODcuMjYyLjM5IDEuMzggMi4wMDUgMi40ODIgMy41ODcgMS4xMDQgMS41ODEgMi4xMDQgMy4wMTggMi4yMjMgMy4xOTMgMS43MjUgMi41MjQgMy4wMDggNC4zMjcgMy4wNzkgNC4zMjguMTE2IDAgMy40OTctNC4yNzggNS4yNDYtNi42MzcuNzUxLTEuMDE0IDEuNDE4LTEuOTEgMS40ODEtMS45OS4wNjQtLjA4Mi41NDgtLjc2NiAxLjA3Ni0xLjUyIDEuMDA3LTEuNDQyLjk5OS0xLjQwMS40MjctMi4wMzNhNzU4LjQ4MyA3NTguNDgzIDAgMCAxLTMuNjUtNC4wNDNjLS40NzItLjUyNy0uODk0LS45OTItLjkzOS0xLjAzMy0uMDQ0LS4wNC0uNDA4LS40NzItLjgwOC0uOTU4LS40LS40ODctLjc2My0uOTE4LS44MS0uOTU5LS4wNjgtLjA2MS0xLjg1Ny0yLjIyNS0yLjc0Ni0zLjMyMS0yLjYwMy0zLjIxMy00LjYyNS03LjI3OC01LjM1My0xMC43NjQtLjM4LTEuODI1LS41NDQtNC4xNjQtLjM2NC01LjIwOS40MDktMi4zNyAyLjIyMi00LjUyNiA0LjgxOS01LjcyOCAyLjQ4NS0xLjE1MSA2LjEwNy0xLjgyIDkuODUtMS44MiAzLjk3NiAwIDYuODg4LjY3MyAxMS4zMSAyLjYxNmwyLjAxMi44OGMuMTQ4LjA2Mi4xNy0uMTgzLjEtMS4xNTYtLjItMi44NDgtLjcyLTYuMjctMS4wOTUtNy4yMTItLjE2OC0uNDItLjM2LS41Ni0xLjg1My0xLjMzOUM0Ni4wMzcgMS4zNzQgNDQuMTQ5Ljc0MSA0MS43MS4zMDEgNDAuMjI2LjAzNCAzNi4xMDItLjA5NCAzNC41MTQuMDh6bTE4LjY2OCA3Ljg5M2MuMTY2LjY2NS4zNzcgMy40NS4zNzIgNC45Mi0uMDEgMy4zNC0uNDggNi40MDItMS40MTggOS4yMzEtLjkyNSAyLjc5My01LjczMyAxMi4xNi04LjM5MiAxNi4zNDgtLjMuNDc1LS41NDcuODg3LS41NDcuOTE3IDAgLjI3Ny00LjQ0MiA2LjcwNi02Ljk4IDEwLjEwMS0xLjUxNSAyLjAyNi02LjQxOSA4LjIzLTYuOTQ5IDguNzlhMjguOCAyOC44IDAgMCAwLS43MzcuODc4Yy0uNzUuOTE3LTQuMzMgNS4xMzItNC40NDEgNS4yMjktLjA0Ny4wNC0uNDQ2LjUwNS0uODg3IDEuMDMycy0uODY3IDEuMDMtLjk0OCAxLjExOWMtLjA4LjA4OC0uNTA3LjU3OC0uOTQ4IDEuMDlsLTEuMDIyIDEuMTgzLTEuMDIxIDEuMTg4Yy0uNDQyLjUxMy0xLjUyNSAxLjc2Ny0yLjQwOCAyLjc4NmExOTkuMzU3IDE5OS4zNTcgMCAwIDAtMi42OTYgMy4xOGMtLjYuNzMtMS4xNTggMS4zOTktMS4yNCAxLjQ4Ny0uMDgzLjA4OC0uMzguNDQ3LS42NjEuNzk4LS4yODEuMzUyLS41OC43MTEtLjY2NC44LS41ODguNjE4LTQuOTA3IDYuMTYzLTYuNzg2IDguNzEzQzIuNTcxIDkwLjggMCA5NC41MTIgMCA5NC43MDhjMCAuMTE3LjcxNS45NDIgMi4wMzQgMi4zNDZhNTAuNTEgNTAuNTEgMCAwIDEgNS4xODIgNi41NjdjMS42NyAyLjU1MyAyLjQ3NiA0LjAwMSA0LjI1NCA3LjY0Ny43NjYgMS41NzIgMS40NDUgMi44IDEuNTA4IDIuNzI5LjExNy0uMTMxIDEuMDctMS41NTMgNS4zODMtOC4wMiAxLjMyNS0xLjk4NyAyLjgxNC00LjIxMSAzLjMwOS00Ljk0MS44NC0xLjI0IDIuNzU2LTQuMSA1LjUzMy04LjI1OWExNDMuOTEgMTQzLjkxIDAgMCAxIDEuMjkzLTEuOTE3Yy4wNjItLjA4Mi40MzYtLjY0Ni44MzItMS4yNTQuMzk2LS42MDguNzc0LTEuMTcyLjg0LTEuMjU0LjA2Ni0uMDggMS4wNDUtMS41NCAyLjE3Ni0zLjI0NGwyLjk4Ny00LjQ5OWMuNTExLS43Ny45NjQtMS40MzQgMS4wMDUtMS40NzUuMDQxLS4wNC45NTQtMS4zOTcgMi4wMjctMy4wMTNhMTYwNy4zNyAxNjA3LjM3IDAgMCAxIDMuNDkyLTUuMjM2QzQ5LjM1OCA1OS43IDU1LjYxOCA1MC4xNzcgNTcuNTY3IDQ2Ljk4MmMuNDctLjc3IDEuMTMtMS44MzIgMS40NjctMi4zNiAxLjY1Mi0yLjU5IDIuODY4LTQuOTUyIDMuNDE0LTYuNjMzLjc3LTIuMzcyLjk1Ni0zLjczOC45NTktNy4wODMuMDAzLTMuNDk3LS4wMjItMy42NzItMS4wMjgtNy4xODUtLjkyLTMuMjEzLTEuNjUxLTQuNzg2LTQuNDI2LTkuNTE4LTEuNDkyLTIuNTQ0LTQuOTktNy4xMTQtNC43Ny02LjIzMXptLTIuMTE0IDUzLjA3MmMtMS40NiAyLjE3LTUuMTE1IDcuNjM2LTcuMDk2IDEwLjYxLTEuMDY4IDEuNjA0LTEuOTQyIDMuMDA3LTEuOTQyIDMuMTE3IDAgLjExLjY0NSAxLjE4NyAxLjQzNCAyLjM5MiAxLjY4NyAyLjU4IDIuNjg3IDQuMjkgNC4wNDIgNi45MTIuNTQ0IDEuMDU1IDEuMDM4IDEuOTg0IDEuMDk3IDIuMDY1LjQ2Mi42NCAzLjkyMiA4Ljc3NCA1Ljc1NyAxMy41MzQuMzA2Ljc5My41NzEgMS40MjMuNTkgMS40MDIuMDE5LS4wMjIuNjA4LTEuNzk4IDEuMzA5LTMuOTQ4IDIuMzUyLTcuMjExIDMuMTgtOS4xNTYgNi4xMTctMTQuMzYuODMtMS40NyAxLjU1Ni0yLjgyNCAxLjYxLTMuMDA3LjEzNC0uNDQ1LS42OS0yLjAyLTMuNjQ3LTYuOTY5LTIuOTM1LTQuOTEyLTcuOTM3LTEyLjYyNS04LjM1OS0xMi44ODgtLjA1Ni0uMDM1LS40NjYuNDc4LS45MTIgMS4xNHoiIGZpbGw9IiNGRTVGNTUiLz48L3N2Zz4=";
        // clothes[
        //     1
        // ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjQiIGhlaWdodD0iMTE0IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzQuNTE0LjA3OWMtMi4wMzUuMjItNS4xNTYuOTktNi41NjcgMS42Mi0uOTg4LjQ0LTMuMTY1IDEuNTI1LTMuNzIxIDEuODU0LTEuODUyIDEuMDk3LTQuNzggMy42NzctNS41MTcgNC44Ni0uMjAyLjMyNS0uODQyIDEuMzIxLTEuNDIyIDIuMjEzLTEuOTUxIDMtMy4wMDcgNS40ODMtMy43NCA4Ljc5LS40NjEgMi4wODQtLjQ2MSA1LjEyNSAwIDcuMzEuOTUyIDQuNTAxIDIuMTM3IDcuNjA1IDQuMTU1IDEwLjg4IDEuNDI1IDIuMzEzIDIuOTg4IDQuNzQ4IDMuMjQgNS4wNS4wOC4wOTcuMzYuNDk2LjYyMy44ODcuMjYyLjM5IDEuMzggMi4wMDUgMi40ODIgMy41ODcgMS4xMDQgMS41ODEgMi4xMDQgMy4wMTggMi4yMjMgMy4xOTMgMS43MjUgMi41MjQgMy4wMDggNC4zMjcgMy4wNzkgNC4zMjguMTE2IDAgMy40OTctNC4yNzggNS4yNDYtNi42MzcuNzUxLTEuMDE0IDEuNDE4LTEuOTEgMS40ODEtMS45OS4wNjQtLjA4Mi41NDgtLjc2NiAxLjA3Ni0xLjUyIDEuMDA3LTEuNDQyLjk5OS0xLjQwMS40MjctMi4wMzNhNzU4LjQ4MyA3NTguNDgzIDAgMCAxLTMuNjUtNC4wNDNjLS40NzItLjUyNy0uODk0LS45OTItLjkzOS0xLjAzMy0uMDQ0LS4wNC0uNDA4LS40NzItLjgwOC0uOTU4LS40LS40ODctLjc2My0uOTE4LS44MS0uOTU5LS4wNjgtLjA2MS0xLjg1Ny0yLjIyNS0yLjc0Ni0zLjMyMS0yLjYwMy0zLjIxMy00LjYyNS03LjI3OC01LjM1My0xMC43NjQtLjM4LTEuODI1LS41NDQtNC4xNjQtLjM2NC01LjIwOS40MDktMi4zNyAyLjIyMi00LjUyNiA0LjgxOS01LjcyOCAyLjQ4NS0xLjE1MSA2LjEwNy0xLjgyIDkuODUtMS44MiAzLjk3NiAwIDYuODg4LjY3MyAxMS4zMSAyLjYxNmwyLjAxMi44OGMuMTQ4LjA2Mi4xNy0uMTgzLjEtMS4xNTYtLjItMi44NDgtLjcyLTYuMjctMS4wOTUtNy4yMTItLjE2OC0uNDItLjM2LS41Ni0xLjg1My0xLjMzOUM0Ni4wMzcgMS4zNzQgNDQuMTQ5Ljc0MSA0MS43MS4zMDEgNDAuMjI2LjAzNCAzNi4xMDItLjA5NCAzNC41MTQuMDh6bTE4LjY2OCA3Ljg5M2MuMTY2LjY2NS4zNzcgMy40NS4zNzIgNC45Mi0uMDEgMy4zNC0uNDggNi40MDItMS40MTggOS4yMzEtLjkyNSAyLjc5My01LjczMyAxMi4xNi04LjM5MiAxNi4zNDgtLjMuNDc1LS41NDcuODg3LS41NDcuOTE3IDAgLjI3Ny00LjQ0MiA2LjcwNi02Ljk4IDEwLjEwMS0xLjUxNSAyLjAyNi02LjQxOSA4LjIzLTYuOTQ5IDguNzlhMjguOCAyOC44IDAgMCAwLS43MzcuODc4Yy0uNzUuOTE3LTQuMzMgNS4xMzItNC40NDEgNS4yMjktLjA0Ny4wNC0uNDQ2LjUwNS0uODg3IDEuMDMycy0uODY3IDEuMDMtLjk0OCAxLjExOWMtLjA4LjA4OC0uNTA3LjU3OC0uOTQ4IDEuMDlsLTEuMDIyIDEuMTgzLTEuMDIxIDEuMTg4Yy0uNDQyLjUxMy0xLjUyNSAxLjc2Ny0yLjQwOCAyLjc4NmExOTkuMzU3IDE5OS4zNTcgMCAwIDAtMi42OTYgMy4xOGMtLjYuNzMtMS4xNTggMS4zOTktMS4yNCAxLjQ4Ny0uMDgzLjA4OC0uMzguNDQ3LS42NjEuNzk4LS4yODEuMzUyLS41OC43MTEtLjY2NC44LS41ODguNjE4LTQuOTA3IDYuMTYzLTYuNzg2IDguNzEzQzIuNTcxIDkwLjggMCA5NC41MTIgMCA5NC43MDhjMCAuMTE3LjcxNS45NDIgMi4wMzQgMi4zNDZhNTAuNTEgNTAuNTEgMCAwIDEgNS4xODIgNi41NjdjMS42NyAyLjU1MyAyLjQ3NiA0LjAwMSA0LjI1NCA3LjY0Ny43NjYgMS41NzIgMS40NDUgMi44IDEuNTA4IDIuNzI5LjExNy0uMTMxIDEuMDctMS41NTMgNS4zODMtOC4wMiAxLjMyNS0xLjk4NyAyLjgxNC00LjIxMSAzLjMwOS00Ljk0MS44NC0xLjI0IDIuNzU2LTQuMSA1LjUzMy04LjI1OWExNDMuOTEgMTQzLjkxIDAgMCAxIDEuMjkzLTEuOTE3Yy4wNjItLjA4Mi40MzYtLjY0Ni44MzItMS4yNTQuMzk2LS42MDguNzc0LTEuMTcyLjg0LTEuMjU0LjA2Ni0uMDggMS4wNDUtMS41NCAyLjE3Ni0zLjI0NGwyLjk4Ny00LjQ5OWMuNTExLS43Ny45NjQtMS40MzQgMS4wMDUtMS40NzUuMDQxLS4wNC45NTQtMS4zOTcgMi4wMjctMy4wMTNhMTYwNy4zNyAxNjA3LjM3IDAgMCAxIDMuNDkyLTUuMjM2QzQ5LjM1OCA1OS43IDU1LjYxOCA1MC4xNzcgNTcuNTY3IDQ2Ljk4MmMuNDctLjc3IDEuMTMtMS44MzIgMS40NjctMi4zNiAxLjY1Mi0yLjU5IDIuODY4LTQuOTUyIDMuNDE0LTYuNjMzLjc3LTIuMzcyLjk1Ni0zLjczOC45NTktNy4wODMuMDAzLTMuNDk3LS4wMjItMy42NzItMS4wMjgtNy4xODUtLjkyLTMuMjEzLTEuNjUxLTQuNzg2LTQuNDI2LTkuNTE4LTEuNDkyLTIuNTQ0LTQuOTktNy4xMTQtNC43Ny02LjIzMXptLTIuMTE0IDUzLjA3MmMtMS40NiAyLjE3LTUuMTE1IDcuNjM2LTcuMDk2IDEwLjYxLTEuMDY4IDEuNjA0LTEuOTQyIDMuMDA3LTEuOTQyIDMuMTE3IDAgLjExLjY0NSAxLjE4NyAxLjQzNCAyLjM5MiAxLjY4NyAyLjU4IDIuNjg3IDQuMjkgNC4wNDIgNi45MTIuNTQ0IDEuMDU1IDEuMDM4IDEuOTg0IDEuMDk3IDIuMDY1LjQ2Mi42NCAzLjkyMiA4Ljc3NCA1Ljc1NyAxMy41MzQuMzA2Ljc5My41NzEgMS40MjMuNTkgMS40MDIuMDE5LS4wMjIuNjA4LTEuNzk4IDEuMzA5LTMuOTQ4IDIuMzUyLTcuMjExIDMuMTgtOS4xNTYgNi4xMTctMTQuMzYuODMtMS40NyAxLjU1Ni0yLjgyNCAxLjYxLTMuMDA3LjEzNC0uNDQ1LS42OS0yLjAyLTMuNjQ3LTYuOTY5LTIuOTM1LTQuOTEyLTcuOTM3LTEyLjYyNS04LjM1OS0xMi44ODgtLjA1Ni0uMDM1LS40NjYuNDc4LS45MTIgMS4xNHoiIGZpbGw9IiM4QUNERUEiLz48L3N2Zz4=";
        // clothes[
        //     2
        // ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjQiIGhlaWdodD0iMTE0IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzQuNTE0LjA3OWMtMi4wMzUuMjItNS4xNTYuOTktNi41NjcgMS42Mi0uOTg4LjQ0LTMuMTY1IDEuNTI1LTMuNzIxIDEuODU0LTEuODUyIDEuMDk3LTQuNzggMy42NzctNS41MTcgNC44Ni0uMjAyLjMyNS0uODQyIDEuMzIxLTEuNDIyIDIuMjEzLTEuOTUxIDMtMy4wMDcgNS40ODMtMy43NCA4Ljc5LS40NjEgMi4wODQtLjQ2MSA1LjEyNSAwIDcuMzEuOTUyIDQuNTAxIDIuMTM3IDcuNjA1IDQuMTU1IDEwLjg4IDEuNDI1IDIuMzEzIDIuOTg4IDQuNzQ4IDMuMjQgNS4wNS4wOC4wOTcuMzYuNDk2LjYyMy44ODcuMjYyLjM5IDEuMzggMi4wMDUgMi40ODIgMy41ODcgMS4xMDQgMS41ODEgMi4xMDQgMy4wMTggMi4yMjMgMy4xOTMgMS43MjUgMi41MjQgMy4wMDggNC4zMjcgMy4wNzkgNC4zMjguMTE2IDAgMy40OTctNC4yNzggNS4yNDYtNi42MzcuNzUxLTEuMDE0IDEuNDE4LTEuOTEgMS40ODEtMS45OS4wNjQtLjA4Mi41NDgtLjc2NiAxLjA3Ni0xLjUyIDEuMDA3LTEuNDQyLjk5OS0xLjQwMS40MjctMi4wMzNhNzU4LjQ4MyA3NTguNDgzIDAgMCAxLTMuNjUtNC4wNDNjLS40NzItLjUyNy0uODk0LS45OTItLjkzOS0xLjAzMy0uMDQ0LS4wNC0uNDA4LS40NzItLjgwOC0uOTU4LS40LS40ODctLjc2My0uOTE4LS44MS0uOTU5LS4wNjgtLjA2MS0xLjg1Ny0yLjIyNS0yLjc0Ni0zLjMyMS0yLjYwMy0zLjIxMy00LjYyNS03LjI3OC01LjM1My0xMC43NjQtLjM4LTEuODI1LS41NDQtNC4xNjQtLjM2NC01LjIwOS40MDktMi4zNyAyLjIyMi00LjUyNiA0LjgxOS01LjcyOCAyLjQ4NS0xLjE1MSA2LjEwNy0xLjgyIDkuODUtMS44MiAzLjk3NiAwIDYuODg4LjY3MyAxMS4zMSAyLjYxNmwyLjAxMi44OGMuMTQ4LjA2Mi4xNy0uMTgzLjEtMS4xNTYtLjItMi44NDgtLjcyLTYuMjctMS4wOTUtNy4yMTItLjE2OC0uNDItLjM2LS41Ni0xLjg1My0xLjMzOUM0Ni4wMzcgMS4zNzQgNDQuMTQ5Ljc0MSA0MS43MS4zMDEgNDAuMjI2LjAzNCAzNi4xMDItLjA5NCAzNC41MTQuMDh6bTE4LjY2OCA3Ljg5M2MuMTY2LjY2NS4zNzcgMy40NS4zNzIgNC45Mi0uMDEgMy4zNC0uNDggNi40MDItMS40MTggOS4yMzEtLjkyNSAyLjc5My01LjczMyAxMi4xNi04LjM5MiAxNi4zNDgtLjMuNDc1LS41NDcuODg3LS41NDcuOTE3IDAgLjI3Ny00LjQ0MiA2LjcwNi02Ljk4IDEwLjEwMS0xLjUxNSAyLjAyNi02LjQxOSA4LjIzLTYuOTQ5IDguNzlhMjguOCAyOC44IDAgMCAwLS43MzcuODc4Yy0uNzUuOTE3LTQuMzMgNS4xMzItNC40NDEgNS4yMjktLjA0Ny4wNC0uNDQ2LjUwNS0uODg3IDEuMDMycy0uODY3IDEuMDMtLjk0OCAxLjExOWMtLjA4LjA4OC0uNTA3LjU3OC0uOTQ4IDEuMDlsLTEuMDIyIDEuMTgzLTEuMDIxIDEuMTg4Yy0uNDQyLjUxMy0xLjUyNSAxLjc2Ny0yLjQwOCAyLjc4NmExOTkuMzU3IDE5OS4zNTcgMCAwIDAtMi42OTYgMy4xOGMtLjYuNzMtMS4xNTggMS4zOTktMS4yNCAxLjQ4Ny0uMDgzLjA4OC0uMzguNDQ3LS42NjEuNzk4LS4yODEuMzUyLS41OC43MTEtLjY2NC44LS41ODguNjE4LTQuOTA3IDYuMTYzLTYuNzg2IDguNzEzQzIuNTcxIDkwLjggMCA5NC41MTIgMCA5NC43MDhjMCAuMTE3LjcxNS45NDIgMi4wMzQgMi4zNDZhNTAuNTEgNTAuNTEgMCAwIDEgNS4xODIgNi41NjdjMS42NyAyLjU1MyAyLjQ3NiA0LjAwMSA0LjI1NCA3LjY0Ny43NjYgMS41NzIgMS40NDUgMi44IDEuNTA4IDIuNzI5LjExNy0uMTMxIDEuMDctMS41NTMgNS4zODMtOC4wMiAxLjMyNS0xLjk4NyAyLjgxNC00LjIxMSAzLjMwOS00Ljk0MS44NC0xLjI0IDIuNzU2LTQuMSA1LjUzMy04LjI1OWExNDMuOTEgMTQzLjkxIDAgMCAxIDEuMjkzLTEuOTE3Yy4wNjItLjA4Mi40MzYtLjY0Ni44MzItMS4yNTQuMzk2LS42MDguNzc0LTEuMTcyLjg0LTEuMjU0LjA2Ni0uMDggMS4wNDUtMS41NCAyLjE3Ni0zLjI0NGwyLjk4Ny00LjQ5OWMuNTExLS43Ny45NjQtMS40MzQgMS4wMDUtMS40NzUuMDQxLS4wNC45NTQtMS4zOTcgMi4wMjctMy4wMTNhMTYwNy4zNyAxNjA3LjM3IDAgMCAxIDMuNDkyLTUuMjM2QzQ5LjM1OCA1OS43IDU1LjYxOCA1MC4xNzcgNTcuNTY3IDQ2Ljk4MmMuNDctLjc3IDEuMTMtMS44MzIgMS40NjctMi4zNiAxLjY1Mi0yLjU5IDIuODY4LTQuOTUyIDMuNDE0LTYuNjMzLjc3LTIuMzcyLjk1Ni0zLjczOC45NTktNy4wODMuMDAzLTMuNDk3LS4wMjItMy42NzItMS4wMjgtNy4xODUtLjkyLTMuMjEzLTEuNjUxLTQuNzg2LTQuNDI2LTkuNTE4LTEuNDkyLTIuNTQ0LTQuOTktNy4xMTQtNC43Ny02LjIzMXptLTIuMTE0IDUzLjA3MmMtMS40NiAyLjE3LTUuMTE1IDcuNjM2LTcuMDk2IDEwLjYxLTEuMDY4IDEuNjA0LTEuOTQyIDMuMDA3LTEuOTQyIDMuMTE3IDAgLjExLjY0NSAxLjE4NyAxLjQzNCAyLjM5MiAxLjY4NyAyLjU4IDIuNjg3IDQuMjkgNC4wNDIgNi45MTIuNTQ0IDEuMDU1IDEuMDM4IDEuOTg0IDEuMDk3IDIuMDY1LjQ2Mi42NCAzLjkyMiA4Ljc3NCA1Ljc1NyAxMy41MzQuMzA2Ljc5My41NzEgMS40MjMuNTkgMS40MDIuMDE5LS4wMjIuNjA4LTEuNzk4IDEuMzA5LTMuOTQ4IDIuMzUyLTcuMjExIDMuMTgtOS4xNTYgNi4xMTctMTQuMzYuODMtMS40NyAxLjU1Ni0yLjgyNCAxLjYxLTMuMDA3LjEzNC0uNDQ1LS42OS0yLjAyLTMuNjQ3LTYuOTY5LTIuOTM1LTQuOTEyLTcuOTM3LTEyLjYyNS04LjM1OS0xMi44ODgtLjA1Ni0uMDM1LS40NjYuNDc4LS45MTIgMS4xNHoiIGZpbGw9IiM2MUU3ODYiLz48L3N2Zz4=";
        glasses[
            0
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQ1IiBoZWlnaHQ9IjY1IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzIuNSA2NUM1MC40NSA2NSA2NSA1MC40NSA2NSAzMi41YzAtMS4zNTYtLjA4My0yLjY5My0uMjQ0LTQuMDA1bC40NTctLjE5NmExOCAxOCAwIDAgMSAxNC40NzcuMTNsLjUzMy4yNEEzMi44NTUgMzIuODU1IDAgMCAwIDgwIDMyLjVDODAgNTAuNDUgOTQuNTUgNjUgMTEyLjUgNjVjMTcuOTQ5IDAgMzIuNS0xNC41NSAzMi41LTMyLjVTMTMwLjQ0OSAwIDExMi41IDBDOTcuMjY5IDAgODQuNDg0IDEwLjQ3OCA4MC45NjIgMjQuNjE5QTIyIDIyIDAgMCAwIDY0IDI0LjQ3QzYwLjQyNyAxMC40MDUgNDcuNjc4IDAgMzIuNSAwIDE0LjU1IDAgMCAxNC41NSAwIDMyLjVTMTQuNTUgNjUgMzIuNSA2NXptMC01QzQ3LjY4OCA2MCA2MCA0Ny42ODggNjAgMzIuNVM0Ny42ODggNSAzMi41IDUgNSAxNy4zMTIgNSAzMi41IDE3LjMxMiA2MCAzMi41IDYwem04MCAwYzE1LjE4OCAwIDI3LjUtMTIuMzEyIDI3LjUtMjcuNVMxMjcuNjg4IDUgMTEyLjUgNSA4NSAxNy4zMTIgODUgMzIuNSA5Ny4zMTIgNjAgMTEyLjUgNjB6IiBmaWxsPSIjRkU1RjU1Ii8+PC9zdmc+";
        glasses[
            1
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQ1IiBoZWlnaHQ9IjY1IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzIuNSA2NUM1MC40NSA2NSA2NSA1MC40NSA2NSAzMi41YzAtMS4zNTYtLjA4My0yLjY5My0uMjQ0LTQuMDA1bC40NTctLjE5NmExOCAxOCAwIDAgMSAxNC40NzcuMTNsLjUzMy4yNEEzMi44NTUgMzIuODU1IDAgMCAwIDgwIDMyLjVDODAgNTAuNDUgOTQuNTUgNjUgMTEyLjUgNjVjMTcuOTQ5IDAgMzIuNS0xNC41NSAzMi41LTMyLjVTMTMwLjQ0OSAwIDExMi41IDBDOTcuMjY5IDAgODQuNDg0IDEwLjQ3OCA4MC45NjIgMjQuNjE5QTIyIDIyIDAgMCAwIDY0IDI0LjQ3QzYwLjQyNyAxMC40MDUgNDcuNjc4IDAgMzIuNSAwIDE0LjU1IDAgMCAxNC41NSAwIDMyLjVTMTQuNTUgNjUgMzIuNSA2NXptMC01QzQ3LjY4OCA2MCA2MCA0Ny42ODggNjAgMzIuNVM0Ny42ODggNSAzMi41IDUgNSAxNy4zMTIgNSAzMi41IDE3LjMxMiA2MCAzMi41IDYwem04MCAwYzE1LjE4OCAwIDI3LjUtMTIuMzEyIDI3LjUtMjcuNVMxMjcuNjg4IDUgMTEyLjUgNSA4NSAxNy4zMTIgODUgMzIuNSA5Ny4zMTIgNjAgMTEyLjUgNjB6IiBmaWxsPSIjOEFDREVBIi8+PC9zdmc+";
        glasses[
            2
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQ1IiBoZWlnaHQ9IjY1IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMzIuNSA2NUM1MC40NSA2NSA2NSA1MC40NSA2NSAzMi41YzAtMS4zNTYtLjA4My0yLjY5My0uMjQ0LTQuMDA1bC40NTctLjE5NmExOCAxOCAwIDAgMSAxNC40NzcuMTNsLjUzMy4yNEEzMi44NTUgMzIuODU1IDAgMCAwIDgwIDMyLjVDODAgNTAuNDUgOTQuNTUgNjUgMTEyLjUgNjVjMTcuOTQ5IDAgMzIuNS0xNC41NSAzMi41LTMyLjVTMTMwLjQ0OSAwIDExMi41IDBDOTcuMjY5IDAgODQuNDg0IDEwLjQ3OCA4MC45NjIgMjQuNjE5QTIyIDIyIDAgMCAwIDY0IDI0LjQ3QzYwLjQyNyAxMC40MDUgNDcuNjc4IDAgMzIuNSAwIDE0LjU1IDAgMCAxNC41NSAwIDMyLjVTMTQuNTUgNjUgMzIuNSA2NXptMC01QzQ3LjY4OCA2MCA2MCA0Ny42ODggNjAgMzIuNVM0Ny42ODggNSAzMi41IDUgNSAxNy4zMTIgNSAzMi41IDE3LjMxMiA2MCAzMi41IDYwem04MCAwYzE1LjE4OCAwIDI3LjUtMTIuMzEyIDI3LjUtMjcuNVMxMjcuNjg4IDUgMTEyLjUgNSA4NSAxNy4zMTIgODUgMzIuNSA5Ny4zMTIgNjAgMTEyLjUgNjB6IiBmaWxsPSIjNjFFNzg2Ii8+PC9zdmc+";
        hat[
            0
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwIiBoZWlnaHQ9Ijg2IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjYuMTQ4IDkuMDMzQzI2LjE3OCA0LjA2MyAyMy43MzguMDE4IDIwLjcgMGMtMy4wMzctLjAxOC01LjUyNCAzLjk5Ny01LjU1MyA4Ljk2Ny0uMDA1LjgyNS4wNTggMS42MjQuMTggMi4zODRhMTMuMzg0IDEzLjM4NCAwIDAgMC0uMTE0LS4xMTJDMTEuNjUgNy43NzUgNy4wNDQgNi43MzMgNC45MjcgOC45MTJjLTIuMTE3IDIuMTc4LS45NDMgNi43NTIgMi42MjIgMTAuMjE2YTE0LjQ3IDE0LjQ3IDAgMCAwIDEuODA2IDEuNDk1Yy0uOTgyLjE4Ni0xLjk5OC40OTYtMy4wMDkuOTM2LTQuNTU3IDEuOTgzLTcuMjcgNS44NS02LjA1NyA4LjYzNSAxLjIxMiAyLjc4NSA1Ljg5IDMuNDM1IDEwLjQ0NyAxLjQ1MWExNC4xMzUgMTQuMTM1IDAgMCAwIDIuODU4LTEuNjU1IDE0LjI5MiAxNC4yOTIgMCAwIDAtMS4yNTcgMi42MWMtMS43MDIgNC42Ny0uNzY4IDkuMjk4IDIuMDg2IDEwLjMzOCAyLjg1NCAxLjA0IDYuNTQ3LTEuOTAyIDguMjQ5LTYuNTcyLjE3My0uNDc2LjMxOS0uOTUxLjQzOC0xLjQyMi4xNzMuNjQuMzk3IDEuMjg4LjY3NCAxLjkzNCAxLjk1NiA0LjU3IDUuODA2IDcuMzA1IDguNTk4IDYuMTEgMi4zOTctMS4wMjcgMy4yMzYtNC42MTQgMi4xODktOC40OTkgNC43NyAxLjYwNSAxMC4wOTUgNC41NDYgMTQuNjE2IDkuMzQ1IDYuOCA3LjIxOCAxMi4xMjUgMTkuMDA2IDEwLjUyOCAzNy44MjhhNCA0IDAgMCAwIDcuOTcxLjY3NmMxLjc2My0yMC43NzItNC4xMTItMzQuOS0xMi42NzctNDMuOTlhNDMuNjczIDQzLjY3MyAwIDAgMC0xMy4yOC05LjU5MmMyLjA1Mi0xLjAwOCAzLjM2NS0yLjU1NSAzLjM2NS00LjI4OSAwLTMuMDM3LTQuMDMtNS41LTktNS41LS43MDMgMC0xLjM4Ny4wNS0yLjA0My4xNDMuMzg2LS4yOTYuNzY1LS42MTcgMS4xMzQtLjk2MyAzLjYyMy0zLjQwMyA0Ljg3NS03Ljk1NiAyLjc5NS0xMC4xNy0yLjA3OS0yLjIxNS02LjcwMi0xLjI1MS0xMC4zMjUgMi4xNTFhMTQuMjg2IDE0LjI4NiAwIDAgMC0xLjkwNCAyLjE4M2MuMjUtMS4wMTUuMzktMi4xMi4zOTYtMy4yNzh6bS0yLjEzNCA3LjA1MS0uMDMuMTQyYTUuODQ0IDUuODQ0IDAgMCAwLS4wNjgtLjAybC4wOTgtLjEyMnoiIGZpbGw9IiNGRTVGNTUiLz48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTg1LjY4MiAyNC40NmMuMDIxLTMuNTU1LTEuNzIzLTYuNDQ3LTMuODk1LTYuNDYtMi4xNzMtLjAxMy0zLjk1MSAyLjg1OS0zLjk3MyA2LjQxNC0uMDAzLjU5LjA0MiAxLjE2Mi4xMyAxLjcwNWExMi4zNjYgMTIuMzY2IDAgMCAwLS4wODItLjA4Yy0yLjU1LTIuNDc4LTUuODQ0LTMuMjIzLTcuMzU4LTEuNjY1LTEuNTE0IDEuNTU4LS42NzUgNC44MyAxLjg3NSA3LjMwNy40MTUuNDAzLjg1Ljc2IDEuMjkyIDEuMDdhMTAuMTUgMTAuMTUgMCAwIDAtMi4xNTIuNjY5Yy0zLjI2IDEuNDE5LTUuMiA0LjE4NC00LjMzMiA2LjE3Ni44NDkgMS45NSA0LjA3MiAyLjQzNiA3LjI2NSAxLjEyNS00LjEzNSAzLjcwNS03LjQyMyA4Ljc5LTkuNyAxNC41NTItMy4yNTUgOC4yMzctNC41NiAxOC4xMjctMy4yNDYgMjguMTE4bDUuOTQ4LS43ODJjLTEuMTg1LTkuMDEuMDA5LTE3Ljg3IDIuODc5LTI1LjEzMSAxLjUwOC0zLjgxOSAzLjQ0OS03LjEyMyA1LjY5Mi05Ljc3NC4zMzEuNDcxLjc1OC44MiAxLjI3IDEuMDA4IDIuMDQyLjc0MyA0LjY4NC0xLjM2MSA1LjktNC43MDIuMTI1LS4zNC4yMy0uNjguMzE1LTEuMDE3LjEyMy40NTguMjgzLjkyMi40ODEgMS4zODQgMS40IDMuMjY4IDQuMTUzIDUuMjI0IDYuMTUgNC4zNyAxLjk5OC0uODU2IDIuNDgyLTQuMTk5IDEuMDgzLTcuNDY3YTEwLjAwNyAxMC4wMDcgMCAwIDAtMS4zNC0yLjI3IDkuODczIDkuODczIDAgMCAwIDIuOTEyLjQyNGMzLjU1NSAwIDYuNDM3LTEuNzYxIDYuNDM3LTMuOTM0cy0yLjg4Mi0zLjkzNC02LjQzNy0zLjkzNGMtLjUwMyAwLS45OTIuMDM1LTEuNDYxLjEwMi4yNzYtLjIxMS41NDctLjQ0LjgxLS42ODkgMi41OTItMi40MzMgMy40ODgtNS42OSAyLTcuMjc0LTEuNDg3LTEuNTg0LTQuNzkzLS44OTQtNy4zODUgMS41NC0uNTI2LjQ5My0uOTgxIDEuMDItMS4zNjIgMS41Ni4xNzktLjcyNi4yNzktMS41MTcuMjg0LTIuMzQ0em0tMS41MjYgNS4wNDRhNC43NzcgNC43NzcgMCAwIDAtLjAyMS4xMDFsLS4wNS0uMDEzYTQuNzkgNC43OSAwIDAgMCAuMDctLjA4OHoiIGZpbGw9IiNGRTVGNTUiLz48L3N2Zz4=";
        hat[
            1
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwIiBoZWlnaHQ9Ijg2IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjYuMTQ4IDkuMDMzQzI2LjE3OCA0LjA2MyAyMy43MzguMDE4IDIwLjcgMGMtMy4wMzctLjAxOC01LjUyNCAzLjk5Ny01LjU1MyA4Ljk2Ny0uMDA1LjgyNS4wNTggMS42MjQuMTggMi4zODRhMTMuMzg0IDEzLjM4NCAwIDAgMC0uMTE0LS4xMTJDMTEuNjUgNy43NzUgNy4wNDQgNi43MzMgNC45MjcgOC45MTJjLTIuMTE3IDIuMTc4LS45NDMgNi43NTIgMi42MjIgMTAuMjE2YTE0LjQ3IDE0LjQ3IDAgMCAwIDEuODA2IDEuNDk1Yy0uOTgyLjE4Ni0xLjk5OC40OTYtMy4wMDkuOTM2LTQuNTU3IDEuOTgzLTcuMjcgNS44NS02LjA1NyA4LjYzNSAxLjIxMiAyLjc4NSA1Ljg5IDMuNDM1IDEwLjQ0NyAxLjQ1MWExNC4xMzUgMTQuMTM1IDAgMCAwIDIuODU4LTEuNjU1IDE0LjI5MiAxNC4yOTIgMCAwIDAtMS4yNTcgMi42MWMtMS43MDIgNC42Ny0uNzY4IDkuMjk4IDIuMDg2IDEwLjMzOCAyLjg1NCAxLjA0IDYuNTQ3LTEuOTAyIDguMjQ5LTYuNTcyLjE3My0uNDc2LjMxOS0uOTUxLjQzOC0xLjQyMi4xNzMuNjQuMzk3IDEuMjg4LjY3NCAxLjkzNCAxLjk1NiA0LjU3IDUuODA2IDcuMzA1IDguNTk4IDYuMTEgMi4zOTctMS4wMjcgMy4yMzYtNC42MTQgMi4xODktOC40OTkgNC43NyAxLjYwNSAxMC4wOTUgNC41NDYgMTQuNjE2IDkuMzQ1IDYuOCA3LjIxOCAxMi4xMjUgMTkuMDA2IDEwLjUyOCAzNy44MjhhNCA0IDAgMCAwIDcuOTcxLjY3NmMxLjc2My0yMC43NzItNC4xMTItMzQuOS0xMi42NzctNDMuOTlhNDMuNjczIDQzLjY3MyAwIDAgMC0xMy4yOC05LjU5MmMyLjA1Mi0xLjAwOCAzLjM2NS0yLjU1NSAzLjM2NS00LjI4OSAwLTMuMDM3LTQuMDMtNS41LTktNS41LS43MDMgMC0xLjM4Ny4wNS0yLjA0My4xNDMuMzg2LS4yOTYuNzY1LS42MTcgMS4xMzQtLjk2MyAzLjYyMy0zLjQwMyA0Ljg3NS03Ljk1NiAyLjc5NS0xMC4xNy0yLjA3OS0yLjIxNS02LjcwMi0xLjI1MS0xMC4zMjUgMi4xNTFhMTQuMjg2IDE0LjI4NiAwIDAgMC0xLjkwNCAyLjE4M2MuMjUtMS4wMTUuMzktMi4xMi4zOTYtMy4yNzh6bS0yLjEzNCA3LjA1MS0uMDMuMTQyYTUuODQ0IDUuODQ0IDAgMCAwLS4wNjgtLjAybC4wOTgtLjEyMnoiIGZpbGw9IiM2MUU3ODYiLz48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTg1LjY4MiAyNC40NmMuMDIxLTMuNTU1LTEuNzIzLTYuNDQ3LTMuODk1LTYuNDYtMi4xNzMtLjAxMy0zLjk1MSAyLjg1OS0zLjk3MyA2LjQxNC0uMDAzLjU5LjA0MiAxLjE2Mi4xMyAxLjcwNWExMi4zNjYgMTIuMzY2IDAgMCAwLS4wODItLjA4Yy0yLjU1LTIuNDc4LTUuODQ0LTMuMjIzLTcuMzU4LTEuNjY1LTEuNTE0IDEuNTU4LS42NzUgNC44MyAxLjg3NSA3LjMwNy40MTUuNDAzLjg1Ljc2IDEuMjkyIDEuMDdhMTAuMTUgMTAuMTUgMCAwIDAtMi4xNTIuNjY5Yy0zLjI2IDEuNDE5LTUuMiA0LjE4NC00LjMzMiA2LjE3Ni44NDkgMS45NSA0LjA3MiAyLjQzNiA3LjI2NSAxLjEyNS00LjEzNSAzLjcwNS03LjQyMyA4Ljc5LTkuNyAxNC41NTItMy4yNTUgOC4yMzctNC41NiAxOC4xMjctMy4yNDYgMjguMTE4bDUuOTQ4LS43ODJjLTEuMTg1LTkuMDEuMDA5LTE3Ljg3IDIuODc5LTI1LjEzMSAxLjUwOC0zLjgxOSAzLjQ0OS03LjEyMyA1LjY5Mi05Ljc3NC4zMzEuNDcxLjc1OC44MiAxLjI3IDEuMDA4IDIuMDQyLjc0MyA0LjY4NC0xLjM2MSA1LjktNC43MDIuMTI1LS4zNC4yMy0uNjguMzE1LTEuMDE3LjEyMy40NTguMjgzLjkyMi40ODEgMS4zODQgMS40IDMuMjY4IDQuMTUzIDUuMjI0IDYuMTUgNC4zNyAxLjk5OC0uODU2IDIuNDgyLTQuMTk5IDEuMDgzLTcuNDY3YTEwLjAwNyAxMC4wMDcgMCAwIDAtMS4zNC0yLjI3IDkuODczIDkuODczIDAgMCAwIDIuOTEyLjQyNGMzLjU1NSAwIDYuNDM3LTEuNzYxIDYuNDM3LTMuOTM0cy0yLjg4Mi0zLjkzNC02LjQzNy0zLjkzNGMtLjUwMyAwLS45OTIuMDM1LTEuNDYxLjEwMi4yNzYtLjIxMS41NDctLjQ0LjgxLS42ODkgMi41OTItMi40MzMgMy40ODgtNS42OSAyLTcuMjc0LTEuNDg3LTEuNTg0LTQuNzkzLS44OTQtNy4zODUgMS41NC0uNTI2LjQ5My0uOTgxIDEuMDItMS4zNjIgMS41Ni4xNzktLjcyNi4yNzktMS41MTcuMjg0LTIuMzQ0em0tMS41MjYgNS4wNDRhNC43NzcgNC43NzcgMCAwIDAtLjAyMS4xMDFsLS4wNS0uMDEzYTQuNzkgNC43OSAwIDAgMCAuMDctLjA4OHoiIGZpbGw9IiM2MUU3ODYiLz48L3N2Zz4=";
        hat[
            2
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwIiBoZWlnaHQ9Ijg2IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjYuMTQ4IDkuMDMzQzI2LjE3OCA0LjA2MyAyMy43MzguMDE4IDIwLjcgMGMtMy4wMzctLjAxOC01LjUyNCAzLjk5Ny01LjU1MyA4Ljk2Ny0uMDA1LjgyNS4wNTggMS42MjQuMTggMi4zODRhMTMuMzg0IDEzLjM4NCAwIDAgMC0uMTE0LS4xMTJDMTEuNjUgNy43NzUgNy4wNDQgNi43MzMgNC45MjcgOC45MTJjLTIuMTE3IDIuMTc4LS45NDMgNi43NTIgMi42MjIgMTAuMjE2YTE0LjQ3IDE0LjQ3IDAgMCAwIDEuODA2IDEuNDk1Yy0uOTgyLjE4Ni0xLjk5OC40OTYtMy4wMDkuOTM2LTQuNTU3IDEuOTgzLTcuMjcgNS44NS02LjA1NyA4LjYzNSAxLjIxMiAyLjc4NSA1Ljg5IDMuNDM1IDEwLjQ0NyAxLjQ1MWExNC4xMzUgMTQuMTM1IDAgMCAwIDIuODU4LTEuNjU1IDE0LjI5MiAxNC4yOTIgMCAwIDAtMS4yNTcgMi42MWMtMS43MDIgNC42Ny0uNzY4IDkuMjk4IDIuMDg2IDEwLjMzOCAyLjg1NCAxLjA0IDYuNTQ3LTEuOTAyIDguMjQ5LTYuNTcyLjE3My0uNDc2LjMxOS0uOTUxLjQzOC0xLjQyMi4xNzMuNjQuMzk3IDEuMjg4LjY3NCAxLjkzNCAxLjk1NiA0LjU3IDUuODA2IDcuMzA1IDguNTk4IDYuMTEgMi4zOTctMS4wMjcgMy4yMzYtNC42MTQgMi4xODktOC40OTkgNC43NyAxLjYwNSAxMC4wOTUgNC41NDYgMTQuNjE2IDkuMzQ1IDYuOCA3LjIxOCAxMi4xMjUgMTkuMDA2IDEwLjUyOCAzNy44MjhhNCA0IDAgMCAwIDcuOTcxLjY3NmMxLjc2My0yMC43NzItNC4xMTItMzQuOS0xMi42NzctNDMuOTlhNDMuNjczIDQzLjY3MyAwIDAgMC0xMy4yOC05LjU5MmMyLjA1Mi0xLjAwOCAzLjM2NS0yLjU1NSAzLjM2NS00LjI4OSAwLTMuMDM3LTQuMDMtNS41LTktNS41LS43MDMgMC0xLjM4Ny4wNS0yLjA0My4xNDMuMzg2LS4yOTYuNzY1LS42MTcgMS4xMzQtLjk2MyAzLjYyMy0zLjQwMyA0Ljg3NS03Ljk1NiAyLjc5NS0xMC4xNy0yLjA3OS0yLjIxNS02LjcwMi0xLjI1MS0xMC4zMjUgMi4xNTFhMTQuMjg2IDE0LjI4NiAwIDAgMC0xLjkwNCAyLjE4M2MuMjUtMS4wMTUuMzktMi4xMi4zOTYtMy4yNzh6bS0yLjEzNCA3LjA1MS0uMDMuMTQyYTUuODQ0IDUuODQ0IDAgMCAwLS4wNjgtLjAybC4wOTgtLjEyMnoiIGZpbGw9IiM4QUNERUEiLz48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTg1LjY4MiAyNC40NmMuMDIxLTMuNTU1LTEuNzIzLTYuNDQ3LTMuODk1LTYuNDYtMi4xNzMtLjAxMy0zLjk1MSAyLjg1OS0zLjk3MyA2LjQxNC0uMDAzLjU5LjA0MiAxLjE2Mi4xMyAxLjcwNWExMi4zNjYgMTIuMzY2IDAgMCAwLS4wODItLjA4Yy0yLjU1LTIuNDc4LTUuODQ0LTMuMjIzLTcuMzU4LTEuNjY1LTEuNTE0IDEuNTU4LS42NzUgNC44MyAxLjg3NSA3LjMwNy40MTUuNDAzLjg1Ljc2IDEuMjkyIDEuMDdhMTAuMTUgMTAuMTUgMCAwIDAtMi4xNTIuNjY5Yy0zLjI2IDEuNDE5LTUuMiA0LjE4NC00LjMzMiA2LjE3Ni44NDkgMS45NSA0LjA3MiAyLjQzNiA3LjI2NSAxLjEyNS00LjEzNSAzLjcwNS03LjQyMyA4Ljc5LTkuNyAxNC41NTItMy4yNTUgOC4yMzctNC41NiAxOC4xMjctMy4yNDYgMjguMTE4bDUuOTQ4LS43ODJjLTEuMTg1LTkuMDEuMDA5LTE3Ljg3IDIuODc5LTI1LjEzMSAxLjUwOC0zLjgxOSAzLjQ0OS03LjEyMyA1LjY5Mi05Ljc3NC4zMzEuNDcxLjc1OC44MiAxLjI3IDEuMDA4IDIuMDQyLjc0MyA0LjY4NC0xLjM2MSA1LjktNC43MDIuMTI1LS4zNC4yMy0uNjguMzE1LTEuMDE3LjEyMy40NTguMjgzLjkyMi40ODEgMS4zODQgMS40IDMuMjY4IDQuMTUzIDUuMjI0IDYuMTUgNC4zNyAxLjk5OC0uODU2IDIuNDgyLTQuMTk5IDEuMDgzLTcuNDY3YTEwLjAwNyAxMC4wMDcgMCAwIDAtMS4zNC0yLjI3IDkuODczIDkuODczIDAgMCAwIDIuOTEyLjQyNGMzLjU1NSAwIDYuNDM3LTEuNzYxIDYuNDM3LTMuOTM0cy0yLjg4Mi0zLjkzNC02LjQzNy0zLjkzNGMtLjUwMyAwLS45OTIuMDM1LTEuNDYxLjEwMi4yNzYtLjIxMS41NDctLjQ0LjgxLS42ODkgMi41OTItMi40MzMgMy40ODgtNS42OSAyLTcuMjc0LTEuNDg3LTEuNTg0LTQuNzkzLS44OTQtNy4zODUgMS41NC0uNTI2LjQ5My0uOTgxIDEuMDItMS4zNjIgMS41Ni4xNzktLjcyNi4yNzktMS41MTcuMjg0LTIuMzQ0em0tMS41MjYgNS4wNDRhNC43NzcgNC43NzcgMCAwIDAtLjAyMS4xMDFsLS4wNS0uMDEzYTQuNzkgNC43OSAwIDAgMCAuMDctLjA4OHoiIGZpbGw9IiM4QUNERUEiLz48L3N2Zz4=";
        necklace[
            0
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjA4IiBoZWlnaHQ9IjY4IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Ik0yMDcuNSA0YTQgNCAwIDAgMS00LjM1OSAzLjk4NGMtOC41NjUgNC4zMTEtMjAuNjgzIDkuOTg3LTMzLjkxOSAxNS40ODVhNC4wMDIgNC4wMDIgMCAwIDEtNS4zNDggMi4xODYgNDUzLjQ5NSA0NTMuNDk1IDAgMCAxLTkuMTMxIDMuNTZjLTkuMjA1IDMuNDctMTguNjEgNi42NDgtMjcuNDM4IDkuMDI1YTQuMDAyIDQuMDAyIDAgMCAxLTYuNTc4IDEuNjQyYy02LjAyNyAxLjM3Ny0xMS42NjQgMi4yODUtMTYuNjM0IDIuNTQzYS45ODcuOTg3IDAgMCAxIC4zNTkuNTAybDIuNDE2IDcuNDM4YTEgMSAwIDAgMCAuOTUxLjY5aDcuODIxYy45NjggMCAxLjM3MSAxLjI0LjU4NyAxLjgxbC02LjMyNiA0LjU5NmExIDEgMCAwIDAtLjM2NCAxLjExOWwyLjQxNyA3LjQzN2MuMjk5LjkyMi0uNzU1IDEuNjg4LTEuNTM5IDEuMTE4bC02LjMyNy00LjU5N2ExIDEgMCAwIDAtMS4xNzUgMGwtNi4zMjcgNC41OTdjLS43ODQuNTctMS44MzgtLjE5Ny0xLjUzOS0xLjExOGwyLjQxNy03LjQzN2ExIDEgMCAwIDAtLjM2NC0xLjExOGwtNi4zMjYtNC41OTdjLS43ODQtLjU3LS4zODItMS44MS41ODctMS44MWg3LjgyYTEgMSAwIDAgMCAuOTUyLS42OWwyLjQxNi03LjQzOGMuMDYyLS4xODkuMTY2LS4zNC4yOTQtLjQ1LS41MjMuMDE1LTEuMDM5LjAyMy0xLjU0Ni4wMjMtNi42MyAwLTE0LjU2Mi0xLjM2My0yMy4wNjQtMy41NzhhNC4wMDIgNC4wMDIgMCAwIDEtNi41ODctMS44NDhjLTcuMzg3LTIuMjEtMTUuMDUtNC45MzYtMjIuNTQ2LTcuODcxYTM5Ni42OCAzOTYuNjggMCAwIDEtNC41MDQtMS43OTUgNC4wMDEgNC4wMDEgMCAwIDEtNS45ODgtMi40ODIgNDkzLjE2NCA0OTMuMTY0IDAgMCAxLTIzLjA2NC0xMC40ODcgNCA0IDAgMCAxLTYuMDE4LTIuOTc3QTM3MC4yMiAzNzAuMjIgMCAwIDEgMS4zMiA3LjIwM2EyLjUgMi41IDAgMSAxIDIuMzYzLTQuNDA2IDM2OC4zMDYgMzY4LjMwNiAwIDAgMCA4LjUyNiA0LjQxNiA0LjAwMiA0LjAwMiAwIDAgMSA1LjA4NyAyLjUxNyA0ODguMDM4IDQ4OC4wMzggMCAwIDAgMjMuNDU0IDEwLjY3MyA0LjAwMiA0LjAwMiAwIDAgMSA1LjUzNCAyLjI5NGMxLjU0LjYyNSAzLjA4NyAxLjI0MyA0LjY0IDEuODUgNy42OCAzLjAwNiAxNS40MDEgNS43MzYgMjIuNzI3IDcuOTA2YTMuOTk4IDMuOTk4IDAgMCAxIDUuMjc2IDEuNDgyYzguMzk4IDIuMjIxIDE2LjA5NSAzLjU2NSAyMi4zNzEgMy41NjUgNS4zMTEgMCAxMS43MzItLjk2MiAxOC44LTIuNjAzYTMuOTk4IDMuOTk4IDAgMCAxIDUuNDE3LTEuMzU0YzguNjcyLTIuMzEyIDE4LjA3OS01LjQ2OCAyNy40NjUtOS4wMDdhNDQ4Ljg5NiA0NDguODk2IDAgMCAwIDguNjA0LTMuMzQ5IDQuMDAyIDQuMDAyIDAgMCAxIDYuMTQzLTIuNTFjMTIuMjQ4LTUuMTAxIDIzLjUwNy0xMC4zNDMgMzEuNzgtMTQuNDY0QTQgNCAwIDEgMSAyMDcuNSA0eiIgZmlsbD0iI0ZFNUY1NSIvPjwvc3ZnPg==";
        necklace[
            1
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjA4IiBoZWlnaHQ9IjY4IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Ik0yMDcuNSA0YTQgNCAwIDAgMS00LjM1OSAzLjk4NGMtOC41NjUgNC4zMTEtMjAuNjgzIDkuOTg3LTMzLjkxOSAxNS40ODVhNC4wMDIgNC4wMDIgMCAwIDEtNS4zNDggMi4xODYgNDUzLjQ5NSA0NTMuNDk1IDAgMCAxLTkuMTMxIDMuNTZjLTkuMjA1IDMuNDctMTguNjEgNi42NDgtMjcuNDM4IDkuMDI1YTQuMDAyIDQuMDAyIDAgMCAxLTYuNTc4IDEuNjQyYy02LjAyNyAxLjM3Ny0xMS42NjQgMi4yODUtMTYuNjM0IDIuNTQzYS45ODcuOTg3IDAgMCAxIC4zNTkuNTAybDIuNDE2IDcuNDM4YTEgMSAwIDAgMCAuOTUxLjY5aDcuODIxYy45NjggMCAxLjM3MSAxLjI0LjU4NyAxLjgxbC02LjMyNiA0LjU5NmExIDEgMCAwIDAtLjM2NCAxLjExOWwyLjQxNyA3LjQzN2MuMjk5LjkyMi0uNzU1IDEuNjg4LTEuNTM5IDEuMTE4bC02LjMyNy00LjU5N2ExIDEgMCAwIDAtMS4xNzUgMGwtNi4zMjcgNC41OTdjLS43ODQuNTctMS44MzgtLjE5Ny0xLjUzOS0xLjExOGwyLjQxNy03LjQzN2ExIDEgMCAwIDAtLjM2NC0xLjExOGwtNi4zMjYtNC41OTdjLS43ODQtLjU3LS4zODItMS44MS41ODctMS44MWg3LjgyYTEgMSAwIDAgMCAuOTUyLS42OWwyLjQxNi03LjQzOGMuMDYyLS4xODkuMTY2LS4zNC4yOTQtLjQ1LS41MjMuMDE1LTEuMDM5LjAyMy0xLjU0Ni4wMjMtNi42MyAwLTE0LjU2Mi0xLjM2My0yMy4wNjQtMy41NzhhNC4wMDIgNC4wMDIgMCAwIDEtNi41ODctMS44NDhjLTcuMzg3LTIuMjEtMTUuMDUtNC45MzYtMjIuNTQ2LTcuODcxYTM5Ni42OCAzOTYuNjggMCAwIDEtNC41MDQtMS43OTUgNC4wMDEgNC4wMDEgMCAwIDEtNS45ODgtMi40ODIgNDkzLjE2NCA0OTMuMTY0IDAgMCAxLTIzLjA2NC0xMC40ODcgNCA0IDAgMCAxLTYuMDE4LTIuOTc3QTM3MC4yMiAzNzAuMjIgMCAwIDEgMS4zMiA3LjIwM2EyLjUgMi41IDAgMSAxIDIuMzYzLTQuNDA2IDM2OC4zMDYgMzY4LjMwNiAwIDAgMCA4LjUyNiA0LjQxNiA0LjAwMiA0LjAwMiAwIDAgMSA1LjA4NyAyLjUxNyA0ODguMDM4IDQ4OC4wMzggMCAwIDAgMjMuNDU0IDEwLjY3MyA0LjAwMiA0LjAwMiAwIDAgMSA1LjUzNCAyLjI5NGMxLjU0LjYyNSAzLjA4NyAxLjI0MyA0LjY0IDEuODUgNy42OCAzLjAwNiAxNS40MDEgNS43MzYgMjIuNzI3IDcuOTA2YTMuOTk4IDMuOTk4IDAgMCAxIDUuMjc2IDEuNDgyYzguMzk4IDIuMjIxIDE2LjA5NSAzLjU2NSAyMi4zNzEgMy41NjUgNS4zMTEgMCAxMS43MzItLjk2MiAxOC44LTIuNjAzYTMuOTk4IDMuOTk4IDAgMCAxIDUuNDE3LTEuMzU0YzguNjcyLTIuMzEyIDE4LjA3OS01LjQ2OCAyNy40NjUtOS4wMDdhNDQ4Ljg5NiA0NDguODk2IDAgMCAwIDguNjA0LTMuMzQ5IDQuMDAyIDQuMDAyIDAgMCAxIDYuMTQzLTIuNTFjMTIuMjQ4LTUuMTAxIDIzLjUwNy0xMC4zNDMgMzEuNzgtMTQuNDY0QTQgNCAwIDEgMSAyMDcuNSA0eiIgZmlsbD0iIzhBQ0RFQSIvPjwvc3ZnPg==";
        necklace[
            2
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjA4IiBoZWlnaHQ9IjY4IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Ik0yMDcuNSA0YTQgNCAwIDAgMS00LjM1OSAzLjk4NGMtOC41NjUgNC4zMTEtMjAuNjgzIDkuOTg3LTMzLjkxOSAxNS40ODVhNC4wMDIgNC4wMDIgMCAwIDEtNS4zNDggMi4xODYgNDUzLjQ5NSA0NTMuNDk1IDAgMCAxLTkuMTMxIDMuNTZjLTkuMjA1IDMuNDctMTguNjEgNi42NDgtMjcuNDM4IDkuMDI1YTQuMDAyIDQuMDAyIDAgMCAxLTYuNTc4IDEuNjQyYy02LjAyNyAxLjM3Ny0xMS42NjQgMi4yODUtMTYuNjM0IDIuNTQzYS45ODcuOTg3IDAgMCAxIC4zNTkuNTAybDIuNDE2IDcuNDM4YTEgMSAwIDAgMCAuOTUxLjY5aDcuODIxYy45NjggMCAxLjM3MSAxLjI0LjU4NyAxLjgxbC02LjMyNiA0LjU5NmExIDEgMCAwIDAtLjM2NCAxLjExOWwyLjQxNyA3LjQzN2MuMjk5LjkyMi0uNzU1IDEuNjg4LTEuNTM5IDEuMTE4bC02LjMyNy00LjU5N2ExIDEgMCAwIDAtMS4xNzUgMGwtNi4zMjcgNC41OTdjLS43ODQuNTctMS44MzgtLjE5Ny0xLjUzOS0xLjExOGwyLjQxNy03LjQzN2ExIDEgMCAwIDAtLjM2NC0xLjExOGwtNi4zMjYtNC41OTdjLS43ODQtLjU3LS4zODItMS44MS41ODctMS44MWg3LjgyYTEgMSAwIDAgMCAuOTUyLS42OWwyLjQxNi03LjQzOGMuMDYyLS4xODkuMTY2LS4zNC4yOTQtLjQ1LS41MjMuMDE1LTEuMDM5LjAyMy0xLjU0Ni4wMjMtNi42MyAwLTE0LjU2Mi0xLjM2My0yMy4wNjQtMy41NzhhNC4wMDIgNC4wMDIgMCAwIDEtNi41ODctMS44NDhjLTcuMzg3LTIuMjEtMTUuMDUtNC45MzYtMjIuNTQ2LTcuODcxYTM5Ni42OCAzOTYuNjggMCAwIDEtNC41MDQtMS43OTUgNC4wMDEgNC4wMDEgMCAwIDEtNS45ODgtMi40ODIgNDkzLjE2NCA0OTMuMTY0IDAgMCAxLTIzLjA2NC0xMC40ODcgNCA0IDAgMCAxLTYuMDE4LTIuOTc3QTM3MC4yMiAzNzAuMjIgMCAwIDEgMS4zMiA3LjIwM2EyLjUgMi41IDAgMSAxIDIuMzYzLTQuNDA2IDM2OC4zMDYgMzY4LjMwNiAwIDAgMCA4LjUyNiA0LjQxNiA0LjAwMiA0LjAwMiAwIDAgMSA1LjA4NyAyLjUxNyA0ODguMDM4IDQ4OC4wMzggMCAwIDAgMjMuNDU0IDEwLjY3MyA0LjAwMiA0LjAwMiAwIDAgMSA1LjUzNCAyLjI5NGMxLjU0LjYyNSAzLjA4NyAxLjI0MyA0LjY0IDEuODUgNy42OCAzLjAwNiAxNS40MDEgNS43MzYgMjIuNzI3IDcuOTA2YTMuOTk4IDMuOTk4IDAgMCAxIDUuMjc2IDEuNDgyYzguMzk4IDIuMjIxIDE2LjA5NSAzLjU2NSAyMi4zNzEgMy41NjUgNS4zMTEgMCAxMS43MzItLjk2MiAxOC44LTIuNjAzYTMuOTk4IDMuOTk4IDAgMCAxIDUuNDE3LTEuMzU0YzguNjcyLTIuMzEyIDE4LjA3OS01LjQ2OCAyNy40NjUtOS4wMDdhNDQ4Ljg5NiA0NDguODk2IDAgMCAwIDguNjA0LTMuMzQ5IDQuMDAyIDQuMDAyIDAgMCAxIDYuMTQzLTIuNTFjMTIuMjQ4LTUuMTAxIDIzLjUwNy0xMC4zNDMgMzEuNzgtMTQuNDY0QTQgNCAwIDEgMSAyMDcuNSA0eiIgZmlsbD0iIzYxRTc4NiIvPjwvc3ZnPg==";
        shoes[
            0
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTg5IiBoZWlnaHQ9IjQyIiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMjEuNjQ0IDIxLjkwMS0zLjEzNSAyLjQwNyA3LjcwNiA5LjQ3OC0xLjU1IDEuMjYtNy43NDItOS41MjEtMy4xMzQgMi40MDcgNy42NzIgOS40MzgtMS41NSAxLjI2LTcuNzA4LTkuNDgxTC43ODYgMzcuOTE0Qy0uNzMgMzkuMDc3LjA5MyA0MS41IDIuMDA0IDQxLjVoNzMuMTZhMiAyIDAgMCAwIDItMlYzYTIgMiAwIDAgMC0yLTJIMjUuNDdhMiAyIDAgMCAwLTIgMnYxNi41MTRhMiAyIDAgMCAxLS4zMTUgMS4wNzdsNy44MTQgOS42MTEtMS41NSAxLjI2MS03Ljc3NC05LjU2MnpNMTY2LjUxIDIwLjkwMWwzLjEzNSAyLjQwNy03LjcwNSA5LjQ3OCAxLjU1IDEuMjYgNy43NDEtOS41MjEgMy4xMzUgMi40MDctNy42NzMgOS40MzggMS41NTEgMS4yNiA3LjcwOC05LjQ4MSAxMS40MTYgOC43NjVjMS41MTYgMS4xNjMuNjkzIDMuNTg2LTEuMjE4IDMuNTg2aC03My4xNmEyIDIgMCAwIDEtMi0yVjJhMiAyIDAgMCAxIDItMmg0OS42OTVhMiAyIDAgMCAxIDIgMnYxNi41MTRhMiAyIDAgMCAwIC4zMTUgMS4wNzdsLTcuODEzIDkuNjExIDEuNTUgMS4yNjEgNy43NzMtOS41NjJ6IiBmaWxsPSIjRkU1RjU1Ii8+PC9zdmc+";
        shoes[
            1
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTg5IiBoZWlnaHQ9IjQyIiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMjEuNjQ0IDIxLjkwMS0zLjEzNSAyLjQwNyA3LjcwNiA5LjQ3OC0xLjU1IDEuMjYtNy43NDItOS41MjEtMy4xMzQgMi40MDcgNy42NzIgOS40MzgtMS41NSAxLjI2LTcuNzA4LTkuNDgxTC43ODYgMzcuOTE0Qy0uNzMgMzkuMDc3LjA5MyA0MS41IDIuMDA0IDQxLjVoNzMuMTZhMiAyIDAgMCAwIDItMlYzYTIgMiAwIDAgMC0yLTJIMjUuNDdhMiAyIDAgMCAwLTIgMnYxNi41MTRhMiAyIDAgMCAxLS4zMTUgMS4wNzdsNy44MTQgOS42MTEtMS41NSAxLjI2MS03Ljc3NC05LjU2MnpNMTY2LjUxIDIwLjkwMWwzLjEzNSAyLjQwNy03LjcwNSA5LjQ3OCAxLjU1IDEuMjYgNy43NDEtOS41MjEgMy4xMzUgMi40MDctNy42NzMgOS40MzggMS41NTEgMS4yNiA3LjcwOC05LjQ4MSAxMS40MTYgOC43NjVjMS41MTYgMS4xNjMuNjkzIDMuNTg2LTEuMjE4IDMuNTg2aC03My4xNmEyIDIgMCAwIDEtMi0yVjJhMiAyIDAgMCAxIDItMmg0OS42OTVhMiAyIDAgMCAxIDIgMnYxNi41MTRhMiAyIDAgMCAwIC4zMTUgMS4wNzdsLTcuODEzIDkuNjExIDEuNTUgMS4yNjEgNy43NzMtOS41NjJ6IiBmaWxsPSIjOEFDREVBIi8+PC9zdmc+";
        shoes[
            2
        ] = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTg5IiBoZWlnaHQ9IjQyIiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMjEuNjQ0IDIxLjkwMS0zLjEzNSAyLjQwNyA3LjcwNiA5LjQ3OC0xLjU1IDEuMjYtNy43NDItOS41MjEtMy4xMzQgMi40MDcgNy42NzIgOS40MzgtMS41NSAxLjI2LTcuNzA4LTkuNDgxTC43ODYgMzcuOTE0Qy0uNzMgMzkuMDc3LjA5MyA0MS41IDIuMDA0IDQxLjVoNzMuMTZhMiAyIDAgMCAwIDItMlYzYTIgMiAwIDAgMC0yLTJIMjUuNDdhMiAyIDAgMCAwLTIgMnYxNi41MTRhMiAyIDAgMCAxLS4zMTUgMS4wNzdsNy44MTQgOS42MTEtMS41NSAxLjI2MS03Ljc3NC05LjU2MnpNMTY2LjUxIDIwLjkwMWwzLjEzNSAyLjQwNy03LjcwNSA5LjQ3OCAxLjU1IDEuMjYgNy43NDEtOS41MjEgMy4xMzUgMi40MDctNy42NzMgOS40MzggMS41NTEgMS4yNiA3LjcwOC05LjQ4MSAxMS40MTYgOC43NjVjMS41MTYgMS4xNjMuNjkzIDMuNTg2LTEuMjE4IDMuNTg2aC03My4xNmEyIDIgMCAwIDEtMi0yVjJhMiAyIDAgMCAxIDItMmg0OS42OTVhMiAyIDAgMCAxIDIgMnYxNi41MTRhMiAyIDAgMCAwIC4zMTUgMS4wNzdsLTcuODEzIDkuNjExIDEuNTUgMS4yNjEgNy43NzMtOS41NjJ6IiBmaWxsPSIjNjFFNzg2Ii8+PC9zdmc+";
    }

    function getBody() external view returns (string memory) {
        return "";
    }

    function getLayer1(uint256 _index) public view returns (string memory) {
        return shoes[_index];
    }

    function getLayer2(uint256 _index) public view returns (string memory) {
        return "";
    }

    function getLayer3(uint256 _index) public view returns (string memory) {
        return necklace[_index];
    }

    function getLayer4(uint256 _index) public view returns (string memory) {
        return glasses[_index];
    }

    function getLayer5(uint256 _index) public view returns (string memory) {
        return hat[_index];
    }

    function getImageForCollection(uint256 collectionIndex, uint256 imageIndex)
        public
        view
        returns (string memory)
    {
        if (collectionIndex == 0) {
            return getLayer1(imageIndex);
        } else if (collectionIndex == 1) {
            return getLayer2(imageIndex);
        } else if (collectionIndex == 2) {
            return getLayer3(imageIndex);
        } else if (collectionIndex == 3) {
            return getLayer4(imageIndex);
        } else if (collectionIndex == 4) {
            return getLayer5(imageIndex);
        } else {
            return "";
        }
    }
}
