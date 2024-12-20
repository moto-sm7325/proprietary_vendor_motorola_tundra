.class public final Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$RoiSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "AutoFocusTrackingStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoiSetRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p3

    .line 2
    instance-of v1, v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    move-object/from16 v3, p2

    goto/16 :goto_4

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 4
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "LOCATION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 5
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    .line 6
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    .line 7
    sget-object v6, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 8
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v6, Landroid/graphics/Point;

    .line 10
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    int-to-float v5, v5

    int-to-float v4, v4

    .line 11
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    const/high16 v9, -0x40000000    # -2.0f

    div-float/2addr v8, v9

    iget v9, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 13
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    new-array v11, v2, [F

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v5, 0x1

    aput v4, v11, v5

    new-array v4, v2, [F

    .line 14
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 15
    new-instance v6, Landroid/graphics/PointF;

    aget v11, v4, v12

    aget v4, v4, v5

    invoke-direct {v6, v11, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    iget v4, v6, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v1, v4

    int-to-float v4, v6

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v6

    .line 18
    new-instance v11, Landroid/graphics/RectF;

    .line 19
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    iget-object v13, v13, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 21
    invoke-direct {v11, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 22
    new-instance v13, Landroid/graphics/PointF;

    iget v14, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v14, v14

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    invoke-direct {v13, v14, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 23
    iget v7, v11, Landroid/graphics/RectF;->left:F

    iget v14, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v14, v10

    sub-float/2addr v7, v14

    .line 24
    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget v15, v11, Landroid/graphics/RectF;->top:F

    sub-float v15, v13, v15

    div-float v16, v13, v10

    sub-float v15, v15, v16

    .line 25
    iget v5, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v14

    .line 26
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v11

    sub-float v13, v13, v16

    .line 27
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v7, v15, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 28
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 29
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    neg-float v13, v5

    neg-float v14, v7

    .line 30
    invoke-virtual {v11, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    sub-float/2addr v1, v5

    sub-float/2addr v4, v7

    .line 31
    iget v5, v11, Landroid/graphics/RectF;->left:F

    iget v7, v11, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v5, v7

    if-gez v13, :cond_1

    iget v13, v11, Landroid/graphics/RectF;->top:F

    iget v14, v11, Landroid/graphics/RectF;->bottom:F

    cmpl-float v15, v13, v14

    if-lez v15, :cond_1

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    cmpg-float v5, v1, v7

    if-gtz v5, :cond_1

    cmpg-float v5, v4, v13

    if-gtz v5, :cond_1

    cmpl-float v5, v4, v14

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v12

    :goto_0
    if-nez v5, :cond_2

    .line 32
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v5, v1

    const/4 v1, 0x1

    goto :goto_1

    .line 33
    :cond_2
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 34
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast v5, Landroid/util/Size;

    .line 36
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-static {v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 40
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 41
    iget v8, v11, Landroid/graphics/RectF;->top:F

    iget v9, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    div-float/2addr v6, v8

    .line 42
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 43
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    .line 44
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 45
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-array v5, v2, [F

    aput v1, v5, v12

    const/4 v1, 0x1

    aput v4, v5, v1

    new-array v4, v2, [F

    .line 46
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 47
    new-instance v5, Landroid/graphics/PointF;

    aget v6, v4, v12

    aget v4, v4, v1

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 48
    :goto_1
    iget v4, v5, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    .line 49
    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    const/4 v6, 0x4

    new-array v6, v6, [I

    aput v4, v6, v12

    aput v5, v6, v1

    aput v4, v6, v2

    const/4 v4, 0x3

    aput v5, v6, v4

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    .line 51
    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_5

    const/16 v1, 0xb4

    if-eq v7, v1, :cond_4

    const/16 v1, 0x10e

    if-eq v7, v1, :cond_3

    goto :goto_2

    :cond_3
    move v12, v4

    goto :goto_2

    :cond_4
    move v12, v2

    goto :goto_2

    :cond_5
    move v12, v1

    .line 52
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 53
    iget-object v7, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 54
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 56
    invoke-virtual {v8, v5, v7, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 57
    iget-object v7, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 58
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_REGISTER_ROI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v8, v5, v7, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 59
    iget-object v4, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 60
    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 61
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 62
    invoke-virtual {v7, v5, v4, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_6
    :goto_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 66
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
