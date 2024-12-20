.class public interface abstract Lmotorola/core_services/power/MotoPowerManager$WirelessPowerShareCallback;
.super Ljava/lang/Object;
.source "MotoPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/power/MotoPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WirelessPowerShareCallback"
.end annotation


# virtual methods
.method public abstract onAvailable()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onStateChanged(I)V
.end method

.method public onStylusBatteryChanged(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStylusError(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStylusStatusChanged(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onUnavailable()V
.end method
