.class public interface abstract Lmotorola/core_services/screentimecontroller/IScreenTimeControlService;
.super Ljava/lang/Object;
.source "IScreenTimeControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmotorola/core_services/screentimecontroller/IScreenTimeControlService$Stub;,
        Lmotorola/core_services/screentimecontroller/IScreenTimeControlService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "motorola.core_services.screentimecontroller.IScreenTimeControlService"


# virtual methods
.method public abstract sendUsageData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
