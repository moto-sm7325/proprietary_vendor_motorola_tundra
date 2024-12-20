.class public final Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;
.super Landroid/os/Handler;
.source "ZoomSmoothJumpRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

.field public final synthetic val$cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic val$eventData:Ljava/lang/Object;

.field public final synthetic val$from:F

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$smoothFrames:I

.field public final synthetic val$state:Lcom/motorola/camera/fsm/camera/StateKey;

.field public final synthetic val$target:F

.field public final synthetic val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Landroid/os/Looper;Lcom/motorola/camera/fsm/camera/FsmContext;IFFLcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    iput p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iput p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_3

    return-void

    .line 7
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iget v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    .line 9
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->sigmoid(F)F

    move-result v0

    .line 10
    sget v5, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->START:F

    sub-float/2addr v0, v5

    sget v6, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->END:F

    sub-float/2addr v6, v5

    div-float/2addr v0, v6

    invoke-static {v4, v2, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v0, v4, v5}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->updateJumpValue(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-static {v0, v2, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->access$101(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 13
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 14
    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 15
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    if-lt p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x18

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    throw p0
.end method
