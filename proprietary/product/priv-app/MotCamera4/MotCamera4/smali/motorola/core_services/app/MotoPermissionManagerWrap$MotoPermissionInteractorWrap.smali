.class public abstract Lmotorola/core_services/app/MotoPermissionManagerWrap$MotoPermissionInteractorWrap;
.super Ljava/lang/Object;
.source "MotoPermissionManagerWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/app/MotoPermissionManagerWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MotoPermissionInteractorWrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract startConfirmation(IILjava/lang/String;Lmotorola/core_services/app/MotoPermissionManagerWrap$MotoPermissionInteractorCallbackWrap;)V
.end method
