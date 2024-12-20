.class public interface abstract Lmotorola/core_services/activity/MotoActivityManager$OnAppLockStateChangeListener;
.super Ljava/lang/Object;
.source "MotoActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/activity/MotoActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppLockStateChangeListener"
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
