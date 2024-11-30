plugins {
    kotlin("jvm") version "1.9.10"
    application
}

group = "vip.mohammedomer"
version = "1.0"

repositories {
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.0")
    testImplementation(kotlin("test"))
}

application {
    mainClass.set("vip.mohammedomer.MainKt")
}
