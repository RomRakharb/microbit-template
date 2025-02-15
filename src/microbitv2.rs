use embedded_hal::digital::{OutputPin, PinState};
use hal::{gpio::Level, pac};
use nrf52833_hal as hal;
pub struct Board;

impl Board {
    pub fn new() -> Self {
        Board
    }
}
