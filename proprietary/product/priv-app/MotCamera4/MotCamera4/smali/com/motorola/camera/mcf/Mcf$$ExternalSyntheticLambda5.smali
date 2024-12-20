.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$1:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->INSTANCE$1:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$xIupuQUTqQxuXiSVYOE9eUefSmg()V

    return-void

    .line 1
    :goto_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda3;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
