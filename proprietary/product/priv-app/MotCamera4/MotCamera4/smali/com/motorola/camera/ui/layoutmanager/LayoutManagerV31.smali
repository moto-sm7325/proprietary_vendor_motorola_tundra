.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "LayoutManagerV31.java"


# instance fields
.field public mAvailableHeight:F

.field public final mBaseBottomMargin:I

.field public final mBaseComponentsMargin:I

.field public final mBaseComponentsMarginSmall:I

.field public mBottomMargin:I

.field public mComponentsMargin:I

.field public mIndicatorBarOffset:I

.field public mLayoutHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0021

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseBottomMargin:I

    const v0, 0x7f0b0022

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMarginSmall:I

    const v0, 0x7f0b0023

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMargin:I

    .line 6
    instance-of p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz p1, :cond_0

    .line 7
    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 8
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    .line 9
    iget-object p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 10
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 11
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    .line 12
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 13
    iget-object p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 14
    iget-object p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateLayoutHeight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    mul-float/2addr v1, v0

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    add-int/lit8 v0, v0, 0x48

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x38

    add-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, v1

    const/high16 v0, 0x42a00000    # 80.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public computeLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v2, v1, Landroid/graphics/Insets;->bottom:I

    iget v1, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    .line 2
    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMarginSmall:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseBottomMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    .line 7
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->calculateLayoutHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    const/4 v0, -0x6

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mIndicatorBarOffset:I

    .line 10
    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    if-lez v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    if-lez v1, :cond_2

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 11
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    .line 12
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 13
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_PREVIEW_ASPECT:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v3, 0x0

    .line 14
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 16
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    const/16 v0, -0x10

    .line 17
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mIndicatorBarOffset:I

    goto :goto_2

    .line 18
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    .line 19
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->calculateLayoutHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    return p0
.end method

.method public final getCaptureBarGuideLine()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getBottomMargin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x42100000    # 36.0f

    sub-float/2addr v1, p0

    return v1
.end method

.method public getComponentsMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    return p0
.end method

.method public final getIndicatorBarMarginHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    int-to-float v0, v0

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    sub-float/2addr v1, v0

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLargerDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mIndicatorBarOffset:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v1, p0

    return v1
.end method

.method public final getModeCarouselY()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getCaptureBarGuideLine()F

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    sub-float/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x41e00000    # 28.0f

    sub-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getModeSliderY()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselY()F

    move-result p0

    return p0
.end method

.method public final getToggleBarGuideLine()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getCaptureBarGuideLine()F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41e00000    # 28.0f

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result p0

    const v2, 0x3faaaaab

    sub-float/2addr p0, v2

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LayoutManagerV31{mBottomMargin="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentsMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailableHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateInsets(Landroid/view/WindowInsets;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateInsets(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSurface(Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Lcom/motorola/camera/PreviewSize;F)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    return-void
.end method
