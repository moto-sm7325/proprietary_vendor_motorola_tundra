.class public final Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "HDR10ModeComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->applyPreviewChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

.field public final synthetic val$deltaHeight:F

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$deltaWidth:F

.field public final synthetic val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startSize:Landroid/util/SizeF;

.field public final synthetic val$transform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

.field public final synthetic val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Landroid/util/SizeF;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$startSize:Landroid/util/SizeF;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaWidth:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaHeight:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaTranslation:F

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$transform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$startSize:Landroid/util/SizeF;

    .line 4
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaWidth:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$startSize:Landroid/util/SizeF;

    .line 5
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaTranslation:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    const/4 p2, 0x0

    invoke-direct {p1, p2, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 9
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v0, 0x4

    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$transform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
