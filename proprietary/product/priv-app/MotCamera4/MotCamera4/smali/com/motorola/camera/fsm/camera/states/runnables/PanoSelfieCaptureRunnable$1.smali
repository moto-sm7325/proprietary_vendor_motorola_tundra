.class public final Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable$1;
.super Lcom/motorola/camera/device/callables/CaptureRequestListener;
.source "PanoSelfieCaptureRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/CaptureRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    return-void
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoSelfieCaptureRunnable;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 5
    invoke-direct {p2, v0, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    return-void
.end method
