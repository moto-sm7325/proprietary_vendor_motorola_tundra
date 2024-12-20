.class public final Lcom/motorola/camera/panorama/PanoAttachImage;
.super Ljava/lang/Object;
.source "PanoAttachImage.java"


# instance fields
.field public mImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoAttachImage;->mImage:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoAttachImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoAttachImage;->mImage:Landroid/media/Image;

    :cond_0
    return-void
.end method
