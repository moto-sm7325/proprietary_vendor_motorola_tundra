.class public final Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "HDR10ModeComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
