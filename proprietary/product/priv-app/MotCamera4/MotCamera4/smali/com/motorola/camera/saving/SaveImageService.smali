.class public final Lcom/motorola/camera/saving/SaveImageService;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveImageService$SaveQueue;,
        Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;,
        Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;,
        Lcom/motorola/camera/saving/SaveImageService$ImageContainer;,
        Lcom/motorola/camera/saving/SaveImageService$LazyLoader;
    }
.end annotation


# instance fields
.field public mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

.field public mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

.field public final mMaxAvailableMemory:J

.field public mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

.field public volatile mProcessingHandler:Landroid/os/Handler;

.field public final mProcessingRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/CameraData;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/motorola/camera/saving/SaveListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

.field public volatile mServiceHandler:Landroid/os/Handler;

.field public mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveImageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 16
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 21
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 22
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 24
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 26
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addBgRecord(Lcom/motorola/camera/CameraData;)V
    .locals 28

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SaveImageService"

    const-string v1, "CameraData uri is null"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v8, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object v2, v8

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 8
    iget v10, v1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 10
    iget v11, v1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 12
    iget v12, v1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 14
    iget-wide v13, v1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    move-object/from16 v27, v8

    .line 16
    iget-wide v8, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    move-wide v15, v8

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 18
    iget v1, v1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move/from16 v17, v1

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 20
    iget-boolean v1, v1, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move/from16 v18, v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object/from16 v19, v1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v24

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getUUID()J

    move-result-wide v25

    const-wide/16 v8, -0x1

    move-object/from16 v1, v27

    invoke-direct/range {v2 .. v26}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    .line 25
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canSave(IILcom/motorola/camera/saving/MemoryListener;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 4
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-wide v5, v4, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    sub-long/2addr v2, v5

    int-to-long v4, p0

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 6
    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;-><init>(IILcom/motorola/camera/saving/MemoryListener;)V

    iput-object v3, v0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    .line 7
    new-instance p0, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    .line 8
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 9
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 10
    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v4

    throw p0

    :catchall_1
    move-exception p0

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "CAPTURE_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    .line 6
    iget-wide v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_1

    .line 10
    iget-wide v4, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 18
    monitor-enter p0

    const/4 v1, -0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public static correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 4
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V

    const-string p0, "DateTime"

    .line 8
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "DateTimeDigitized"

    .line 11
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    .line 14
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception when correctExifInfo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p5

    .line 2
    new-instance v6, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v6, p5, p2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    if-eqz p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v6, p3}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 4
    :cond_0
    invoke-virtual {v6, p4}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p6, p7}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static duplicateMediaFile(Lcom/motorola/camera/storage/SharedMediaFile;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object p0

    return-object p0
.end method

.method public static embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_6

    :cond_1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/saving/XmpUtil;->writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    :goto_2
    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    throw p0

    :catch_2
    move-object p1, v0

    .line 11
    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, p1

    .line 12
    :goto_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_6
    return-object p0
.end method

.method public static finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SaveImageService"

    const-string v3, "finishVideoFile failed"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void
.end method

.method public static getProcessingCameraData(J)Lcom/motorola/camera/CameraData;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 5
    monitor-exit v1

    return-object v2

    .line 6
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public static getProcessingPostView(J)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap can`t be read. Thumbnail path: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveImageService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public static hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_message"

    const-string v2, "Failed to create file"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "task_id"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 12
    new-instance p1, Lcom/motorola/camera/CameraData;

    iget-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;-><init>(ZLcom/motorola/camera/CameraData;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v7, v3

    .line 5
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 7
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v5, "SEQ_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-wide v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v6, "DATE_TAKEN"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    .line 11
    invoke-static {v1, v8}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :goto_2
    iget v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 17
    invoke-static {v1, v3}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v14

    .line 20
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v15

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v17, 0x1

    move-object v4, v3

    move/from16 v16, v0

    invoke-direct/range {v4 .. v17}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 21
    invoke-static {v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static removeBgRecord(JLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static resetFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static saveCinemagraph(JZLcom/motorola/camera/saving/FileName;Ljava/io/File;IIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v11, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;

    move-object v1, v11

    move-object v2, p3

    move-object/from16 v3, p4

    move v4, p2

    move-wide v5, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;ZJIIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    .line 3
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, v1, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLandroid/app/Activity;Lcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v2, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    .line 4
    new-instance p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    const-string v1, "SEQ_ID"

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 5
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v0, "DATE_TAKEN"

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    const-string v1, "PROCESSING_URI"

    .line 9
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 12
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v0, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    :cond_1
    return-void
.end method

.method public static stripAppSegments([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/XmpUtil;->stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    throw p0

    :catch_2
    move-object v2, v0

    .line 10
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 11
    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method public static writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 13

    .line 1
    iget-object v0, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    .line 8
    iget-object v4, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 10
    :cond_0
    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    :goto_0
    iput v4, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 11
    iget-object v5, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez v5, :cond_1

    move v10, v3

    goto :goto_1

    .line 13
    :cond_1
    iget v6, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    move v10, v6

    :goto_1
    if-nez v5, :cond_2

    move v11, v3

    goto :goto_2

    .line 14
    :cond_2
    iget v5, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    move v11, v5

    .line 15
    :goto_2
    iput v10, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 16
    iput v11, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 17
    iget-object v6, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    .line 18
    invoke-static {v4}, Lcom/motorola/camera/utility/ExifUtility;->toExifOrientation(I)I

    move-result v8

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v12

    .line 19
    invoke-static/range {v4 .. v11}, Lcom/motorola/camera/saving/SaveImageService;->createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v12, p0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 22
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 24
    :cond_4
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 25
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v2, v12

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 27
    :goto_4
    :try_start_2
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 28
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "No space left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "SaveImageService"

    const-string/jumbo p2, "writeToFile failed: Storage full"

    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    sget-object p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda9;->INSTANCE:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda9;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :cond_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 34
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return v3

    :goto_5
    move-object v12, v2

    .line 35
    :goto_6
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 36
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 37
    throw p0
.end method


# virtual methods
.method public final addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final addSaveRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V
    .locals 18

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    const-string v2, "SaveImageService"

    if-eqz v1, :cond_0

    const-string v0, "Is RAW data, not support watermark!"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Jpeg data is null, won\'t add watermark!"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    const-string v1, ""

    const-string v3, "WatermarkEditorService"

    const/4 v5, 0x0

    .line 6
    :try_start_0
    iget-object v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 9
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v6, :cond_2

    :try_start_1
    const-string v7, "front"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :try_start_2
    const-string v7, "rear"

    .line 10
    :goto_0
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v8

    .line 12
    invoke-static {v8}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v9

    .line 13
    new-instance v10, Landroid/util/Size;

    iget v11, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v10, v11, v12}, Landroid/util/Size;-><init>(II)V

    .line 14
    invoke-static {v10}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    .line 15
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 16
    invoke-static {v9, v7, v11, v12}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 17
    iget v9, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v7, v9}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 19
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v12, :cond_3

    .line 20
    :try_start_3
    invoke-static {v6, v10}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(ZLandroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 21
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :cond_3
    :try_start_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 23
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark size is unknown! key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 24
    :cond_4
    :try_start_6
    invoke-static {v11}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 26
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 27
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v13, :cond_5

    .line 30
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    .line 31
    :try_start_8
    invoke-static {v11, v1, v12, v7}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_6

    :goto_1
    move-object/from16 v16, v2

    move-object v9, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_12

    .line 32
    :cond_6
    sget-object v12, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    .line 33
    sget-object v12, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    .line 34
    invoke-virtual {v12, v9, v11}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_d

    .line 35
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0603ba

    .line 37
    invoke-virtual {v9, v12, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    int-to-float v1, v1

    .line 38
    sget v13, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v13, v1

    float-to-int v13, v13

    .line 39
    sget v14, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v14, v1

    float-to-int v14, v14

    .line 40
    sget v15, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v1, v15

    float-to-int v1, v1

    const/16 v15, 0x5a

    .line 41
    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eq v15, v5, :cond_8

    const/16 v15, 0x10e

    if-ne v15, v5, :cond_7

    goto :goto_5

    .line 42
    :cond_7
    :try_start_9
    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_14

    :goto_4
    move-object/from16 v16, v2

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_16

    :cond_8
    :goto_5
    :try_start_a
    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 43
    :goto_6
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 44
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 45
    invoke-static {v5, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 46
    :try_start_b
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 47
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v15, 0xff

    .line 49
    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p2, :cond_a

    if-eqz v8, :cond_9

    .line 52
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v4, v16, v17

    int-to-float v4, v4

    .line 53
    invoke-virtual {v6, v11, v4, v15, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 54
    :cond_9
    invoke-virtual {v6, v11, v15, v15, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_a
    :goto_7
    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 56
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :try_start_c
    iget-wide v2, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 57
    invoke-static {v2, v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v3, 0x0

    .line 58
    :try_start_d
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v3, 0x1

    .line 59
    :try_start_e
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 61
    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v3, v1

    .line 64
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const/4 v11, 0x0

    :try_start_f
    invoke-virtual {v7, v2, v11, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 68
    :try_start_10
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    .line 69
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v4

    sub-int/2addr v3, v13

    .line 70
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v14

    if-eqz v8, :cond_b

    goto :goto_8

    :cond_b
    move v13, v3

    :goto_8
    int-to-float v3, v13

    int-to-float v4, v4

    .line 71
    invoke-virtual {v6, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    invoke-static {v10}, Lcom/motorola/camera/service/WatermarkEditorService;->isStrokeSupport(Landroid/util/Size;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 73
    invoke-static {v9, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v6, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    move-object v1, v5

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v4, v17

    const/4 v15, 0x0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_9
    move-object/from16 v4, v17

    const/4 v7, 0x0

    goto/16 :goto_15

    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v1, v11

    const/4 v5, 0x0

    .line 74
    :goto_a
    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 75
    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 76
    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 77
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 78
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 79
    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 80
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 81
    invoke-virtual {v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnail()[B

    move-result-object v4

    .line 82
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/4 v7, 0x0

    .line 83
    :try_start_11
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    .line 85
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 86
    array-length v9, v4

    invoke-static {v4, v7, v9, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v4, :cond_13

    .line 87
    :try_start_12
    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v6, :cond_e

    int-to-float v6, v6

    .line 88
    invoke-static {v4, v6}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 89
    :cond_e
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    new-instance v7, Landroid/graphics/Rect;

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/4 v11, 0x0

    :try_start_13
    invoke-direct {v7, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 92
    :try_start_14
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v3, v9

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v2, v9

    .line 94
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    const/4 v15, 0x0

    :try_start_15
    invoke-direct {v9, v15, v10, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v8, :cond_f

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 97
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 98
    :cond_f
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 101
    invoke-virtual {v6, v1, v7, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v6

    .line 104
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v7, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v7, :cond_10

    neg-int v7, v7

    int-to-float v7, v7

    .line 106
    invoke-static {v4, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 107
    :cond_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v7, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    const/high16 v9, 0x10000

    if-lt v7, v9, :cond_11

    .line 110
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 111
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v7, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 112
    :cond_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-ge v6, v9, :cond_12

    .line 113
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    .line 114
    :goto_b
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v4, v17

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move v15, v11

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move v15, v11

    goto :goto_c

    :cond_13
    const/4 v3, 0x1

    const/4 v15, 0x0

    :try_start_16
    const-string v2, "The thumbnail image is invalid or null!"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v4, v17

    .line 115
    :try_start_17
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_5
    move-exception v0

    :goto_c
    move-object/from16 v4, v17

    goto :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move v15, v7

    goto :goto_c

    :goto_d
    move v7, v15

    goto/16 :goto_15

    :cond_14
    move-object/from16 v4, v17

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_e
    const/4 v2, 0x0

    .line 116
    :goto_f
    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v6, :cond_16

    .line 117
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    neg-int v6, v6

    int-to-float v6, v6

    .line 118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    .line 119
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    .line 120
    invoke-virtual {v14, v6, v7, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {v14, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    const/4 v6, 0x1

    move-object v9, v1

    move v7, v15

    move v15, v6

    .line 123
    :try_start_18
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eq v1, v6, :cond_15

    move v1, v3

    goto :goto_10

    :cond_15
    move v1, v7

    :goto_10
    move-object v9, v6

    move v6, v1

    move-object v1, v9

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_15

    :cond_16
    move v7, v15

    move v6, v7

    const/4 v9, 0x0

    .line 124
    :goto_11
    :try_start_19
    iget-object v10, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 125
    new-instance v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v10, v1, v11, v2, v8}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToJpeg([BLjava/lang/Object;Lcom/motorola/camera/mcf/McfMetadataModificationCallable;IZ)[B

    move-result-object v1

    if-nez v1, :cond_17

    const-string v0, "Watermarked JPEG was not successfully created"

    .line 126
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    move v3, v7

    goto :goto_12

    .line 127
    :cond_17
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move v4, v6

    .line 128
    :goto_12
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_18

    .line 129
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_18
    move v4, v3

    goto :goto_18

    :catchall_3
    move-exception v0

    move v4, v6

    goto :goto_19

    :catch_8
    move-exception v0

    move v3, v6

    goto :goto_17

    :catchall_4
    move-exception v0

    :goto_13
    move v7, v15

    goto :goto_14

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_14
    move v4, v7

    const/4 v9, 0x0

    goto :goto_19

    :catch_b
    move-exception v0

    move-object/from16 v16, v2

    move-object v4, v3

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_15
    move v3, v7

    :goto_16
    const/4 v9, 0x0

    .line 130
    :goto_17
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 131
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_19

    .line 132
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_19
    move v4, v7

    :goto_18
    if-nez v4, :cond_1a

    const-string v0, "Add watermark failed!"

    move-object/from16 v1, v16

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    :catchall_7
    move-exception v0

    move v4, v3

    .line 134
    :goto_19
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_1b

    .line 135
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :cond_1b
    throw v0
.end method

.method public final embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 18

    move-object/from16 v1, p1

    .line 13
    sget-object v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 15
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xb4

    const-string v7, "SaveImageService"

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    .line 17
    sget-object v9, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 18
    sget-object v9, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 19
    sget-object v10, Lcom/motorola/camera/AppFeatures$Feature;->DYNAMIC_DEPTH_XMP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 21
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_a

    const-string v9, "Orientation"

    .line 22
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v11, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 23
    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 25
    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v13, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 26
    invoke-virtual {v12, v13}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 27
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    if-eqz v11, :cond_1

    .line 28
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v8

    .line 29
    :goto_1
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    if-nez v12, :cond_2

    goto :goto_3

    .line 30
    :cond_2
    :try_start_0
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v14, 0x5a

    if-eq v0, v14, :cond_5

    if-eq v0, v6, :cond_4

    const/16 v14, 0x10e

    if-eq v0, v14, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    .line 31
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 33
    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {v14, v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v10, v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v0

    .line 37
    invoke-virtual {v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-static {v13, v9, v0, v12}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encodeDynamicDepthPhoto Failed to write exif orientation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 41
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing depth photo parameters depthJpeg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " originalJpeg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " imagingModel="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    move-object v0, v8

    :goto_5
    if-eqz v0, :cond_9

    .line 42
    iget-boolean v1, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    if-eqz v1, :cond_8

    .line 43
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    invoke-static {v1}, Lcom/motorola/camera/saving/XmpUtil;->extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 46
    new-instance v2, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v8, v8, v8, v3}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 47
    invoke-static {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "Failed to encode dynamic depth photo, using gdepth instead!"

    .line 48
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_a
    iget-object v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 50
    iget-object v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 51
    iget-object v0, v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 52
    iget-object v11, v10, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 53
    check-cast v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 54
    iget-object v12, v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    if-eqz v12, :cond_10

    if-eqz v0, :cond_10

    .line 55
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 56
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 57
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 58
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 59
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 60
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto/16 :goto_6

    .line 61
    :cond_b
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 62
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 63
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 64
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 65
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 66
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto/16 :goto_6

    .line 67
    :cond_c
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 68
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 69
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 70
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 71
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 72
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_6

    .line 73
    :cond_d
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 74
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 75
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 76
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 77
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 78
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_6

    .line 79
    :cond_e
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 80
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 81
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 82
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 83
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 84
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_6

    .line 85
    :cond_f
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 87
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 88
    iget-object v14, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 89
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v14, v12, v15}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 90
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 91
    :cond_10
    :goto_6
    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v12, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v0, v12, :cond_12

    iget-boolean v0, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v0, :cond_12

    .line 92
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    iget-object v12, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "UUID"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 93
    iget-object v13, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v13, v13, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v13, v3

    if-nez v13, :cond_11

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_11
    move-object v13, v8

    :goto_7
    invoke-direct {v0, v8, v12, v13, v8}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 94
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 95
    :cond_12
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 96
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 97
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v12, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    const/4 v13, 0x2

    if-ne v0, v12, :cond_1b

    .line 98
    invoke-static {v8}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 100
    invoke-static {v8}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 101
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 102
    iget-object v14, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 103
    iget-object v14, v14, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 104
    iget-object v14, v14, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v15, "PANO_IMAGE_HEIGHT"

    .line 105
    invoke-virtual {v14, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 106
    iget-object v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 107
    iget-object v15, v15, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 108
    iget-object v15, v15, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "PANO_IMAGE_WIDTH"

    .line 109
    invoke-virtual {v15, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 110
    iget-object v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 111
    iget-object v15, v15, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 112
    iget v5, v15, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 113
    iget-object v15, v15, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_MAX_OUTPUT_SIZE"

    .line 114
    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v8

    if-nez v8, :cond_13

    goto/16 :goto_b

    :cond_13
    if-eqz v5, :cond_16

    if-ne v5, v6, :cond_14

    goto :goto_8

    :cond_14
    if-le v3, v0, :cond_15

    .line 115
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v13

    goto :goto_9

    :cond_15
    if-le v14, v12, :cond_1b

    .line 116
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v13

    goto :goto_9

    :cond_16
    :goto_8
    if-le v3, v12, :cond_17

    .line 117
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v13

    goto :goto_9

    :cond_17
    if-le v14, v0, :cond_1b

    .line 118
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v13

    :goto_9
    mul-int/lit8 v5, v0, 0x2

    sub-int v6, v5, v3

    .line 119
    div-int/2addr v6, v13

    sub-int v8, v0, v14

    .line 120
    div-int/2addr v8, v13

    if-gez v8, :cond_18

    mul-int/lit8 v5, v14, 0x2

    move v0, v14

    const/4 v8, 0x0

    :cond_18
    if-gez v6, :cond_19

    .line 121
    div-int/lit8 v0, v3, 0x2

    move v5, v3

    const/4 v6, 0x0

    .line 122
    :cond_19
    iget-object v12, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "http://ns.google.com/photos/1.0/panorama/"

    .line 123
    iget-object v13, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v13, :cond_1a

    sget-object v13, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 124
    new-instance v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 125
    iput-object v13, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 126
    :cond_1a
    iget-object v12, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_1
    const-string v13, "CroppedAreaImageHeightPixels"

    .line 127
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v4

    :try_start_2
    move-object v4, v12

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v10

    const/4 v10, 0x0

    .line 128
    :try_start_3
    invoke-virtual {v4, v15, v13, v14, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v4, "CroppedAreaImageWidthPixels"

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v13, v12

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 130
    invoke-virtual {v13, v15, v4, v3, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v3, "CroppedAreaLeftPixels"

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v12

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 132
    invoke-virtual {v6, v15, v3, v4, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v3, "CroppedAreaTopPixels"

    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v12

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 134
    invoke-virtual {v6, v15, v3, v4, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v3, "FullPanoHeightPixels"

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v12

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 136
    invoke-virtual {v4, v15, v3, v0, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "FullPanoWidthPixels"

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v12

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 138
    invoke-virtual {v4, v15, v0, v3, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "ProjectionType"

    const-string v3, "equirectangular"

    .line 139
    move-object v4, v12

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 140
    invoke-virtual {v4, v15, v0, v3, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "UsePanoramaViewer"

    .line 141
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 142
    invoke-virtual {v12, v15, v0, v3, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_1
    :goto_a
    move-object/from16 v17, v10

    goto :goto_c

    :catch_2
    :cond_1b
    :goto_b
    move-object/from16 v16, v4

    goto :goto_a

    .line 143
    :catch_3
    :goto_c
    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_1d

    .line 144
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 145
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 146
    invoke-static {v0}, Lcom/motorola/camera/saving/XmpUtil;->extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;

    move-result-object v3

    .line 147
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v3, :cond_1d

    .line 148
    iget-object v0, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_1d

    .line 149
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/adobe/xmp/XMPMeta;)Lcom/motorola/camera/saving/XmpData;

    .line 150
    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/ViewPoint;)Lcom/motorola/camera/saving/XmpData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    const-string v3, "Error adding 360 InitialView"

    .line 151
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_1d
    :goto_e
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 153
    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 154
    iget-object v3, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v4, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfDepthRender;

    .line 155
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v4

    if-eqz v4, :cond_21

    .line 156
    new-instance v4, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v4, v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    .line 157
    iget-object v5, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 158
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_20

    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_f

    .line 160
    :cond_1e
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 161
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v2, v5

    .line 162
    :goto_f
    iget-boolean v5, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v5, :cond_1f

    .line 163
    new-instance v5, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v2

    const-string v6, "Segmentation"

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([BLjava/lang/String;)V

    goto :goto_10

    .line 164
    :cond_1f
    new-instance v5, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([B)V

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    .line 165
    :goto_10
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiX()I

    move-result v6

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiY()I

    move-result v7

    .line 166
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiHeight()I

    move-result v0

    invoke-direct {v2, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    goto :goto_11

    :cond_21
    const-string v0, "DepthMap Aux present, but data is null. Not embedding depth data"

    .line 167
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    if-eqz v3, :cond_22

    .line 168
    new-instance v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointX()I

    move-result v2

    .line 169
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointY()I

    move-result v6

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocusType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v6, v3}, Lcom/motorola/camera/saving/XmpData$DepthFocus;-><init>(IILjava/lang/String;)V

    goto :goto_12

    :cond_22
    const/4 v0, 0x0

    :goto_12
    const-string v2, "Data"

    const-string v3, "image/jpeg"

    const-string v6, "Mime"

    if-eqz v4, :cond_25

    .line 170
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "http://ns.google.com/photos/1.0/depthmap/"

    .line 171
    iget-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_23

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 172
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 173
    iput-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 174
    :cond_23
    iget-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_24

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 175
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 176
    iput-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 177
    :cond_24
    iget-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 178
    iget-object v10, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_5
    const-string v12, "Far"

    .line 179
    iget v13, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v15, 0x0

    .line 180
    invoke-virtual {v14, v7, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Format"

    const-string v13, "RangeLinear"

    .line 181
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 182
    invoke-virtual {v14, v7, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 183
    move-object v12, v8

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 184
    invoke-virtual {v12, v7, v6, v3, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Near"

    const/4 v13, 0x0

    .line 185
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v13, v8

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 186
    invoke-virtual {v13, v7, v12, v14, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 187
    iget-object v12, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/String;

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 188
    invoke-virtual {v10, v7, v2, v12, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 189
    iget-object v10, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    if-eqz v10, :cond_25

    const-string v12, "RoiX"

    .line 190
    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v13, v8

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 191
    invoke-virtual {v13, v7, v12, v10, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiY"

    .line 192
    iget-object v12, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v8

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 193
    invoke-virtual {v13, v7, v10, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiWidth"

    .line 194
    iget-object v12, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v8

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 195
    invoke-virtual {v13, v7, v10, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiHeight"

    .line 196
    iget-object v4, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 197
    invoke-virtual {v8, v7, v10, v4, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_25
    if-eqz v5, :cond_28

    .line 198
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "http://ns.google.com/photos/1.0/image/"

    .line 199
    iget-object v7, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v7, :cond_26

    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 200
    new-instance v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 201
    iput-object v7, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 202
    :cond_26
    iget-object v7, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v7, :cond_27

    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 203
    new-instance v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 204
    iput-object v7, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 205
    :cond_27
    iget-object v7, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 206
    iget-object v8, v9, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 207
    :try_start_6
    iget-object v10, v5, Lcom/motorola/camera/saving/XmpData$GImage;->mData:Ljava/lang/String;

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 208
    invoke-virtual {v8, v4, v2, v10, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 209
    move-object v2, v7

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 210
    invoke-virtual {v2, v4, v6, v3, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 211
    iget-object v2, v5, Lcom/motorola/camera/saving/XmpData$GImage;->mItemSemantic:Ljava/lang/String;

    if-eqz v2, :cond_28

    const-string v3, "ItemSemantic"

    .line 212
    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 213
    invoke-virtual {v7, v4, v3, v2, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_6
    .catch Lcom/adobe/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_28
    if-eqz v0, :cond_2a

    .line 214
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://ns.motorola.com/camera/1.0/depthfocus/"

    .line 215
    iget-object v3, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v3, :cond_29

    sget-object v3, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 216
    new-instance v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 217
    iput-object v3, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 218
    :cond_29
    iget-object v3, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_7
    const-string v4, "FocalPointX"

    .line 219
    iget v5, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointX:I

    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v7, 0x0

    .line 221
    invoke-virtual {v6, v2, v4, v5, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v4, "FocalPointY"

    .line 222
    iget v5, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointY:I

    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 224
    invoke-virtual {v6, v2, v4, v5, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v4, "FocalPointType"

    .line 225
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointType:Ljava/lang/String;

    .line 226
    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 227
    invoke-virtual {v3, v2, v4, v0, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_7
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_7

    .line 228
    :catch_7
    :cond_2a
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    iget-boolean v2, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v2, :cond_2b

    .line 229
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 230
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    goto :goto_13

    .line 231
    :cond_2b
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 232
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 233
    :goto_13
    iget-boolean v3, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    .line 234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 235
    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    :cond_2c
    move-object/from16 v2, v17

    .line 236
    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_2e

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 238
    iget-wide v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 239
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    .line 240
    iget-object v4, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v4, :cond_2d

    .line 241
    sget-object v4, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 242
    new-instance v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 243
    iput-object v4, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 244
    :cond_2d
    iget-object v4, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_8
    const-string v5, "MotionPhoto"

    .line 245
    move-object v6, v4

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-object/from16 v11, v16

    const/4 v10, 0x0

    .line 246
    invoke-virtual {v6, v0, v5, v11, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "MotionPhotoVersion"

    .line 247
    move-object v6, v4

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 248
    invoke-virtual {v6, v0, v5, v11, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "MotionPhotoPresentationTimestampUs"

    .line 249
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 250
    move-object v3, v4

    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 251
    invoke-virtual {v3, v0, v5, v2, v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 252
    invoke-static {v4}, Lcom/motorola/camera/saving/XmpData;->createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V

    const-string v0, "Container:Directory[%d]/Container:Item"

    .line 253
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v5, v3

    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Primary"

    const-string v13, "image/jpeg"

    const-wide/16 v14, 0x0

    move-object v10, v4

    .line 254
    invoke-static/range {v10 .. v15}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x2

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "MotionPhoto"

    const-string/jumbo v6, "video/mp4"

    move-object v3, v4

    move-object v4, v0

    .line 256
    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_8
    .catch Lcom/adobe/xmp/XMPException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    const-string v2, "XmpData"

    const-string v3, "can\'t embed motion photo oem"

    .line 257
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :cond_2e
    :goto_14
    iget-object v0, v9, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_2f

    .line 259
    iget-boolean v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    if-eqz v0, :cond_2f

    .line 260
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 261
    :cond_2f
    iput-object v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v1, p2

    .line 262
    invoke-static {v1, v9}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v7, "SEQ_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v6, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 9
    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v8, "ALTERNATE_SHOT"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 10
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "alternate_shot_index_"

    .line 11
    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 12
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v8

    :goto_2
    const-string v7, "IS_PRIMARY"

    .line 14
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v6, v7, :cond_4

    move v6, v8

    goto :goto_3

    :cond_4
    move v6, v9

    :goto_3
    const-string v7, "MCF"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 17
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 18
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "task_id"

    .line 19
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 20
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 21
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    :cond_5
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 23
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    move-object v13, v7

    .line 24
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v6, :cond_7

    .line 25
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ".dng"

    .line 26
    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "PROCESSING_URI"

    .line 27
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    :cond_7
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 29
    invoke-static {v0, v14}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 30
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 31
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 32
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 33
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v4, "SaveImageService"

    const-string v7, "notifyImageSaveComplete: unable to determine if current media file is the original one."

    .line 34
    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_5
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 36
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 38
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz v9, :cond_8

    .line 39
    iget-object v7, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(JLjava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 42
    invoke-virtual {v1, v13}, Lcom/motorola/camera/saving/SaveImageService;->notifyProcessingUri(Landroid/net/Uri;)V

    .line 43
    :cond_9
    new-instance v0, Landroid/util/Size;

    iget v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v0, v1, v4}, Landroid/util/Size;-><init>(II)V

    iget v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/motorola/camera/CameraData;

    iget-wide v11, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v20

    .line 46
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v21

    iget v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/16 v23, 0x0

    move-object v10, v1

    move-wide/from16 v16, v3

    move/from16 v22, v0

    .line 47
    invoke-direct/range {v10 .. v23}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 48
    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    .line 49
    invoke-static {v1, v6}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CAPTURE_THUMB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_a
    return-void
.end method

.method public final notifyProcessingUri(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final removeImageProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SaveImageService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v0, "ImageLength"

    const-string v7, "ImageWidth"

    .line 6
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 7
    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object v9, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "DOCUMENT_POINTS"

    .line 9
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "SaveImageService"

    if-eqz v9, :cond_4

    .line 10
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 11
    iget-object v12, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "DOCUMENT_WIDTH"

    invoke-virtual {v12, v13, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    new-array v14, v13, [B

    .line 14
    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-static {v14, v10, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 16
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v13

    .line 17
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 18
    invoke-virtual {v10, v13}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 19
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/16 v15, 0x8

    new-array v15, v15, [I

    move-object/from16 v20, v6

    .line 20
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v12, v12

    div-float/2addr v6, v12

    const/4 v12, 0x0

    move-object/from16 v21, v4

    .line 21
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_0

    .line 22
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    const/16 v19, 0x0

    move-object v6, v15

    move v15, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v13

    invoke-static/range {v14 .. v19}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object v4

    .line 24
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v9, 0x1

    aget v9, v13, v9

    const/4 v10, 0x2

    aget v10, v13, v10

    .line 26
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 27
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 28
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v12

    invoke-virtual {v9, v10, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 33
    :try_start_0
    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 34
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v12, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 37
    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 38
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 39
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 40
    iget v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 41
    invoke-virtual {v12, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 42
    invoke-virtual {v12, v7, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v12, v0, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v9}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    .line 45
    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x8

    :goto_1
    if-ge v7, v8, :cond_1

    .line 47
    aget v10, v6, v7

    .line 48
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";"

    .line 49
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    invoke-virtual {v12, v6, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 53
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const-string v6, "1;"

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 55
    invoke-virtual {v12, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 56
    invoke-virtual {v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v9

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 58
    :goto_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process failed to write exif of document: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_3
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 60
    new-instance v4, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v4}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 61
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v6, "http://ns.google.com/photos/1.0/document/"

    .line 63
    iget-object v7, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v7, :cond_2

    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 64
    new-instance v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 65
    iput-object v7, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 66
    :cond_2
    iget-object v7, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v7, :cond_3

    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 67
    new-instance v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 68
    iput-object v7, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 69
    :cond_3
    iget-object v7, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 70
    iget-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_2
    const-string v10, "Data"

    .line 71
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 72
    invoke-virtual {v8, v6, v10, v0, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v8, "image/jpeg"

    .line 73
    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 74
    invoke-virtual {v7, v6, v0, v8, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v6, "XmpData"

    const-string v7, "can\'t embed document data"

    .line 75
    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_4
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 77
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    const/4 v7, 0x0

    .line 78
    invoke-direct {v0, v6, v7, v7, v7}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 79
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_6

    .line 80
    :goto_5
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 81
    throw v0

    :cond_4
    move-object/from16 v21, v4

    move-object/from16 v20, v6

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {v3, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    move-object v5, v0

    .line 83
    :cond_5
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    move-object/from16 v4, v21

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_7

    :cond_6
    move-object/from16 v4, v21

    :goto_7
    if-eqz v20, :cond_7

    .line 85
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto/16 :goto_25

    .line 86
    :cond_7
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 87
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 88
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_SAVE_OUTPUT_BY_ENGINE"

    .line 89
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 91
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    .line 92
    :cond_8
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 93
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 94
    iget v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/16 v7, 0x9

    if-ne v0, v7, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    .line 95
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    .line 96
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v8, v0, v9}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v0

    const/4 v8, 0x0

    .line 99
    aget v8, v0, v8

    iput v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 100
    aget v0, v0, v7

    iput v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 101
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    goto :goto_9

    .line 102
    :cond_a
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v7, "PANO_IMAGE_WIDTH"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_IMAGE_HEIGHT"

    .line 103
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 104
    invoke-static {v0, v7, v8}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v0

    const/4 v7, 0x0

    .line 105
    aget v8, v0, v7

    iput v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/4 v8, 0x1

    .line 106
    aget v0, v0, v8

    iput v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    move v0, v7

    .line 107
    :goto_9
    iget-object v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 108
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 109
    invoke-static {v5, v7, v0}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V

    .line 110
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v0, :cond_10

    .line 111
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 112
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 113
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 115
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    const-string v7, "AutoEnhanceManager"

    .line 116
    :try_start_3
    sget-object v8, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    invoke-virtual {v8}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :try_start_4
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 118
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 119
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 120
    invoke-static {v8, v0, v10}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v8, v0

    .line 122
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_2
    move-exception v0

    :try_start_9
    const-string v8, "Failed to apply enhance from FileDescriptor with error: "

    .line 123
    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    const-string v8, "autoEnhance: "

    .line 124
    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    const/4 v0, 0x0

    :goto_c
    move-object v7, v0

    .line 125
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 126
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceDebugKeepFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 128
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v3, v0}, Lcom/motorola/camera/saving/SaveImageService;->duplicateMediaFile(Lcom/motorola/camera/storage/SharedMediaFile;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    .line 130
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 131
    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 132
    :try_start_b
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 133
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    const-wide/16 v14, 0x0

    .line 134
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v19, v7

    int-to-long v6, v0

    move-wide/from16 v16, v6

    .line 135
    :try_start_d
    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 136
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 137
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v19, v7

    :goto_d
    move-object v6, v0

    .line 138
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v7, v0

    :try_start_11
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object/from16 v19, v7

    :goto_f
    move-object v6, v0

    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object v7, v0

    :try_start_13
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    :goto_11
    const-string v6, "Failed to copy the mediaFile with error: "

    .line 139
    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->delete()V

    .line 141
    :goto_12
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_13

    :cond_b
    move-object/from16 v19, v7

    .line 142
    :goto_13
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    if-eqz v19, :cond_e

    .line 143
    :try_start_14
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 144
    :try_start_15
    invoke-static {v6}, Lcom/motorola/camera/saving/XmpUtil;->extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;

    move-result-object v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 145
    :try_start_16
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    if-nez v7, :cond_c

    .line 146
    new-instance v7, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v7}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    goto :goto_15

    :catchall_9
    move-exception v0

    move-object v7, v0

    .line 147
    :try_start_17
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    goto :goto_14

    :catchall_a
    move-exception v0

    move-object v6, v0

    :try_start_18
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :catchall_b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_17

    :catch_6
    const/4 v7, 0x0

    :catch_7
    :try_start_19
    const-string v0, "Failed to read the fileDescriptor, creating new XMP"

    .line 148
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    if-nez v7, :cond_c

    .line 149
    new-instance v7, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v7}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 150
    :cond_c
    :goto_15
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 151
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v8, v6}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v6, v19

    .line 152
    invoke-static {v6, v7}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 154
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 155
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 156
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 157
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_16

    :catchall_d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1

    :catchall_e
    move-exception v0

    move-object v1, v7

    :goto_17
    if-nez v1, :cond_d

    .line 158
    new-instance v1, Lcom/motorola/camera/saving/XmpData;

    .line 159
    :cond_d
    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->resetFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 160
    throw v0

    :cond_e
    const-string v0, "Enhance failed, saving the original panorama"

    .line 161
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_f
    const-string v0, "MediaFile is null, saving the original panorama"

    .line 162
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_10
    :goto_18
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    .line 164
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    goto/16 :goto_25

    :cond_11
    const/4 v6, 0x0

    if-nez v5, :cond_12

    const-string v0, "Jpeg is null"

    .line 165
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_12
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v0, :cond_14

    .line 167
    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 169
    iget-object v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 170
    invoke-static {v7, v5}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->autoEnhance(Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 171
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    if-nez v7, :cond_13

    const-string v7, "Auto Enhance failed, saving original jpeg"

    .line 172
    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_19

    :cond_13
    const/4 v5, 0x1

    .line 173
    iput-boolean v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    move-object/from16 v22, v7

    move v7, v5

    move-object/from16 v5, v22

    goto :goto_19

    :cond_14
    const/4 v7, 0x1

    move-object v0, v6

    .line 174
    :goto_19
    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 175
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 176
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    array-length v9, v9

    .line 177
    iput v9, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    .line 178
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 179
    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v8, :cond_15

    move v8, v7

    goto :goto_1a

    :cond_15
    const/4 v8, 0x0

    .line 180
    :goto_1a
    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v9, :cond_17

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v9, :cond_17

    .line 181
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v9

    if-eqz v8, :cond_17

    .line 182
    sget-object v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v9, v8, :cond_16

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v9, v8, :cond_16

    move v8, v7

    goto :goto_1b

    :cond_16
    const/4 v8, 0x0

    .line 183
    :cond_17
    :goto_1b
    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v9, :cond_18

    .line 184
    sget-object v10, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v9, :cond_18

    .line 185
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v9

    if-eqz v9, :cond_18

    move v9, v7

    goto :goto_1c

    :cond_18
    const/4 v9, 0x0

    :goto_1c
    if-eqz v9, :cond_1a

    if-eqz v8, :cond_1a

    .line 186
    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v9, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v8, :cond_1a

    .line 187
    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 188
    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAppXId()I

    move-result v9

    .line 189
    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v10

    if-lez v10, :cond_1a

    .line 190
    :try_start_1c
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    .line 191
    :try_start_1d
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    array-length v12, v12

    .line 192
    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 193
    :try_start_1e
    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v6

    invoke-static {v9, v6, v10, v11}, Lcom/motorola/camera/saving/XmpUtil;->addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 194
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 195
    :cond_19
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_21

    :catchall_f
    move-exception v0

    move-object v6, v11

    goto :goto_1d

    :catch_8
    move-object v6, v11

    goto :goto_1e

    :catchall_10
    move-exception v0

    :goto_1d
    move-object v1, v6

    move-object v6, v10

    goto :goto_1f

    :catch_9
    :goto_1e
    move-object v8, v6

    move-object v6, v10

    goto :goto_20

    :catchall_11
    move-exception v0

    move-object v1, v6

    :goto_1f
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 196
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 197
    throw v0

    :catch_a
    move-object v8, v6

    .line 198
    :goto_20
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v11, v8

    .line 199
    :goto_21
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 200
    :cond_1a
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v6}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    .line 201
    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 202
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 203
    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 204
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v10

    if-nez v10, :cond_1c

    .line 205
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_22

    :cond_1b
    const/4 v7, 0x0

    .line 206
    :cond_1c
    :goto_22
    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1e

    if-eqz v7, :cond_1d

    goto :goto_23

    .line 207
    :cond_1d
    invoke-interface {v9, v6}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V

    .line 208
    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    .line 209
    iput-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_24

    .line 210
    :cond_1e
    :goto_23
    invoke-static {v9, v6}, Lcom/motorola/camera/saving/SaveImageService;->duplicateMediaFile(Lcom/motorola/camera/storage/SharedMediaFile;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    .line 211
    :cond_1f
    :goto_24
    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    .line 212
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceDebugKeepFile()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 213
    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v6}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const/high16 v6, 0x10000000

    .line 214
    invoke-virtual {v3, v6}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 215
    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    const-string v7, "_BURST"

    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 217
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 218
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 219
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v7, "alternate_shot_index_"

    .line 220
    invoke-static {v7}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 221
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    .line 224
    invoke-static {v4, v6}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 225
    :cond_20
    move-object v4, v8

    check-cast v4, Lcom/motorola/camera/storage/SharedMediaFile;

    .line 226
    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v4, v3}, Lcom/motorola/camera/saving/SaveImageService;->duplicateMediaFile(Lcom/motorola/camera/storage/SharedMediaFile;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v3

    .line 228
    invoke-static {v0, v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    .line 229
    :cond_21
    invoke-static {v5, v8, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 230
    invoke-virtual {v1, v2, v8}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    :cond_22
    :goto_25
    return-void
.end method
