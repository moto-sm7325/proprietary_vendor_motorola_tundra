.class public final synthetic Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

.field public final synthetic f$1:Lcom/motorola/camera/device/callables/MediaStatusListener$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    return-void
.end method
