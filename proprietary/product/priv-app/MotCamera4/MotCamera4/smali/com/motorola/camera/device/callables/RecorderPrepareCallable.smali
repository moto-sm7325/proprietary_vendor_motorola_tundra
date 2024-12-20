.class public final Lcom/motorola/camera/device/callables/RecorderPrepareCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "RecorderPrepareCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field public final mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

.field public final mFileDescriptor:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Ljava/io/FileDescriptor;Lcom/motorola/camera/device/callables/RecorderPrepareListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public static setDefaultHDRParameters()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "hdr_record_on=false"

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string/jumbo v1, "wnr_on=false"

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "ans_on=true"

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "orientation=landscape"

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "inverted=false"

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "facing=none"

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "hdr_audio_channel_count=0"

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "hdr_audio_sampling_rate=0"

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/device/callables/CallableReturn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/device/callables/CallableReturn<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 3
    new-instance p0, Lcom/motorola/camera/device/callables/CallableReturn;

    new-instance v0, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/DriveStateUnknownException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/device/callables/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/motorola/camera/device/callables/CallableReturn;

    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->prepareRecorder()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/device/callables/CallableReturn;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 6
    new-instance p0, Lcom/motorola/camera/device/callables/CallableReturn;

    new-instance v1, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    invoke-direct {v1, v0}, Lcom/motorola/camera/device/exception/DriveStateUnknownException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/motorola/camera/device/callables/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 8
    new-instance p0, Lcom/motorola/camera/device/callables/CallableReturn;

    invoke-direct {p0, v0}, Lcom/motorola/camera/device/callables/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecorderPrepareCallable"

    return-object p0
.end method

.method public final prepareRecorder()Landroid/view/Surface;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MR_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v3, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isCallActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v3

    .line 7
    iget-object v6, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v6, :cond_2

    .line 8
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioHDRSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->setDefaultHDRParameters()V

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v3, v4}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 12
    :cond_3
    :goto_2
    iget-object v3, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_b

    .line 13
    sget-object v4, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    .line 14
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v5, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v4

    .line 17
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioHDRSupported()Z

    move-result v6

    if-eqz v6, :cond_a

    if-ne v1, v4, :cond_a

    .line 18
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "audio"

    .line 19
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string v4, "hdr_record_on=true"

    .line 20
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string/jumbo v4, "wnr_on=false"

    .line 21
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v4, "ans_on=true"

    .line 22
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v4, "hdr_audio_channel_count=4"

    .line 23
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v4, "hdr_audio_sampling_rate=48000"

    .line 24
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "facing=front"

    goto :goto_4

    :cond_5
    const-string v4, "facing=back"

    .line 26
    :goto_4
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 27
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_7

    const/16 v7, 0xb4

    if-ne v4, v7, :cond_6

    goto :goto_5

    :cond_6
    const-string v7, "inverted=false"

    goto :goto_6

    :cond_7
    :goto_5
    const-string v7, "inverted=true"

    .line 28
    :goto_6
    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    if-eq v4, v6, :cond_9

    const/16 v6, 0x10e

    if-ne v4, v6, :cond_8

    goto :goto_7

    :cond_8
    const-string v4, "orientation=portrait"

    goto :goto_8

    :cond_9
    :goto_7
    const-string v4, "orientation=landscape"

    .line 29
    :goto_8
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 30
    :cond_a
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_b
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    if-eqz v2, :cond_c

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 37
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    invoke-virtual {v3, v1, v5}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 42
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const/16 v1, 0x1e

    .line 44
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 45
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    float-to-double v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 46
    :cond_e
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-boolean v2, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    if-nez v2, :cond_f

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 47
    :cond_f
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    if-lez v1, :cond_10

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 48
    :cond_10
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-wide v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_11

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 49
    :cond_11
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_12

    .line 50
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v2, v4

    .line 51
    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 52
    :cond_12
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 53
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    const-string v2, "RecorderPrepareCallable"

    if-eqz v1, :cond_16

    .line 54
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 55
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 56
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_13

    .line 57
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 59
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    if-eqz v2, :cond_14

    .line 60
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 61
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 62
    :cond_14
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_15
    const-string p0, "record surface is not valid."

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Ljava/io/IOException;

    const-string v0, "record surface is not valid"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    const-string p0, "record surface is null."

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p0, Ljava/io/IOException;

    const-string v0, "record surface is null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
