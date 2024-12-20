.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz p1, :cond_7

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget v1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/16 v2, 0x5a

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 5
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v3, v6

    .line 6
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    goto :goto_0

    :cond_1
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_2

    sub-float/2addr v3, v6

    .line 7
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 8
    :cond_2
    :goto_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 9
    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 10
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    iget-boolean v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    if-eqz v3, :cond_3

    .line 12
    iput v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_1

    :cond_3
    sub-float/2addr v1, p1

    add-float/2addr v1, v6

    rem-float/2addr v1, v6

    .line 13
    iput v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_4
    :goto_1
    cmpg-float p1, v2, v4

    const/4 v1, 0x1

    if-gez p1, :cond_5

    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    move v3, v1

    .line 14
    :goto_2
    iput v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v4, v3, v5

    if-gez p1, :cond_6

    neg-float v2, v2

    :cond_6
    aput v2, v3, v1

    .line 15
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 16
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iput-boolean v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 18
    new-instance v2, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    iput-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    :cond_7
    :goto_3
    return-void

    .line 27
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$Companion;

    const-string/jumbo p1, "this$0"

    .line 28
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez p1, :cond_8

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
