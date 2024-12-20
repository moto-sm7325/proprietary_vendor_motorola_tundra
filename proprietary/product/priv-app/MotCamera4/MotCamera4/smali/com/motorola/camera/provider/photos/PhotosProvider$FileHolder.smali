.class public final Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;
.super Ljava/lang/Object;
.source "PhotosProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/provider/photos/PhotosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHolder"
.end annotation


# instance fields
.field public final mFile:Ljava/io/File;

.field public final mWritable:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mFile:Ljava/io/File;

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mWritable:Z

    return-void
.end method
