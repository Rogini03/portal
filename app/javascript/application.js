// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "bootstrap"
Turbo.session.drive = false
import "chartkick"
import "Chart.bundle"
import "chartkick/chart.js"