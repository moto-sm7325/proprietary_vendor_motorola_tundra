.class public final Lcom/motorola/camera/provider/photos/AutoEnhanceManager;
.super Ljava/lang/Object;
.source "AutoEnhanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;
    }
.end annotation


# instance fields
.field public mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    return-void
.end method

.method public static applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    const-string v0, "AutoEnhanceManager"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    invoke-static {v2, p2}, Lcom/motorola/camera/Util;->writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V

    const/4 p2, 0x0

    .line 4
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    new-instance v5, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    invoke-direct {v5, v2, p2}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 6
    new-instance v5, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v5, p1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-string p1, "_ENHANCED"

    .line 7
    invoke-virtual {v5, p1}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    .line 10
    :try_start_4
    new-instance v7, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    invoke-direct {v7, p1, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->applyEnhance(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    invoke-static {p1}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 15
    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 17
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 18
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v5, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v5, p1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_0

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    goto :goto_2

    :catch_4
    move-exception p0

    move-object v2, v1

    :goto_0
    move-object p1, v1

    move-object v3, p1

    move-object v5, v3

    :goto_1
    :try_start_5
    const-string p2, "Failed to Auto Enhance the image with error: "

    .line 19
    invoke-static {v0, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 20
    :cond_0
    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 22
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    const-string p0, "Failed to Auto Enhance the image"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_4
    move-exception p0

    move-object v1, v5

    .line 25
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 27
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    .line 28
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 29
    throw p0
.end method

.method public static autoEnhance(Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    move-result-object v0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AutoEnhanceManager"

    const-string v0, "autoEnhance: "

    .line 3
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-direct {v0, v1}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    return-object p0
.end method
