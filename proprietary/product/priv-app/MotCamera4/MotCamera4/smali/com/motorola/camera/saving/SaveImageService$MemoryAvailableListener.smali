.class public final Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryAvailableListener"
.end annotation


# instance fields
.field public final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/saving/MemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNumPics:I

.field public final mPicSize:I


# direct methods
.method public constructor <init>(IILcom/motorola/camera/saving/MemoryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mPicSize:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mNumPics:I

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
