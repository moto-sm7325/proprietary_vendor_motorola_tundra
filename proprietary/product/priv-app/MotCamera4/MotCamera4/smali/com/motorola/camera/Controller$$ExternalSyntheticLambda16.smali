.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Controller;

.field public final synthetic f$1:Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda16;->f$0:Lcom/motorola/camera/Controller;

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda16;->f$1:Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda16;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda16;->f$1:Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    .line 2
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {p0, v1, v0}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V

    return-void
.end method
