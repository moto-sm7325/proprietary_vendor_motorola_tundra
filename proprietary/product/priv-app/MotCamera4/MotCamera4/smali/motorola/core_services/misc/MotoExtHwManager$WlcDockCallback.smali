.class public interface abstract Lmotorola/core_services/misc/MotoExtHwManager$WlcDockCallback;
.super Ljava/lang/Object;
.source "MotoExtHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/misc/MotoExtHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WlcDockCallback"
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public onWlcCapabilityChanged(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onWlcPowerChanged(II)V
.end method

.method public abstract onWlcStatusChanged(I)V
.end method

.method public onWlcTxIdChanged(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
