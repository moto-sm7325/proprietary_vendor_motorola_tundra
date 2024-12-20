.class public abstract Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;
.super Landroid/os/Binder;
.source "IExtensionEngine.java"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const-string v4, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    if-lt v0, v3, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_21

    const-wide/16 v4, -0x1

    const-string v6, "Extension "

    const-string v7, "clientDeathListener"

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 3
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v7, "results"

    .line 7
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->processStream(Ljava/lang/String;I)Z

    move-result v9

    .line 10
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 12
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v7, "inputResult"

    .line 16
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->buildRequest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 19
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 21
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 22
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 24
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 25
    :goto_2
    check-cast v0, Landroid/view/Surface;

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 27
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string/jumbo v7, "surface"

    .line 28
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->configureStream(Landroid/view/Surface;I)Landroid/view/Surface;

    move-result-object v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 30
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-interface {v8, v2, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_7

    .line 33
    :cond_5
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 34
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 37
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    .line 38
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 40
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 42
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 43
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 44
    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->initialize(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v9, v3

    goto :goto_5

    .line 45
    :cond_8
    :goto_4
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " failed to initialize"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 48
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 49
    move-object/from16 v4, p0

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 50
    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->getExtensionConfig()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 51
    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_7
    move v0, v3

    goto/16 :goto_18

    .line 53
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 54
    move-object/from16 v6, p0

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    cmp-long v4, v0, v4

    if-nez v4, :cond_a

    goto :goto_8

    .line 55
    :cond_a
    invoke-virtual {v6, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_8

    .line 56
    :cond_b
    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->isSupported()Z

    move-result v9

    .line 57
    :goto_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 59
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    move-object/from16 v7, p0

    check-cast v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v10, "name"

    .line 62
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "cameraId"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    const/4 v11, 0x4

    new-array v11, v11, [B

    .line 65
    invoke-virtual {v10, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v10, v11, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    aget-byte v12, v11, v3

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    const/4 v12, 0x2

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    const/4 v12, 0x3

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 67
    sget-object v12, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->EXTENSION_MAP:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_c

    .line 68
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 69
    :cond_c
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v4, v10

    const/16 v10, 0x20

    shl-long/2addr v4, v10

    shl-long v13, v14, v13

    or-long/2addr v4, v13

    int-to-long v12, v12

    or-long/2addr v4, v12

    .line 70
    invoke-virtual {v7, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v10

    if-nez v10, :cond_1e

    .line 71
    iget-object v10, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    if-nez v10, :cond_d

    .line 72
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize json config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 73
    :cond_d
    :try_start_1
    iget-object v10, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    const-string v12, "camera"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CameraManager;

    if-eqz v10, :cond_e

    .line 74
    invoke-virtual {v10, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 75
    :catch_0
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v10, "No access to camera characteristics"

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_f

    .line 76
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cannot retrieve camera characteristics"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 77
    :cond_f
    sget-object v10, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v12, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    const-string v13, "imagers"

    const/4 v14, -0x1

    .line 78
    invoke-virtual {v10, v13, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v10

    .line 79
    check-cast v10, Lorg/json/JSONArray;

    .line 80
    sget-object v12, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v10, :cond_11

    if-eqz v12, :cond_11

    .line 81
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    move v15, v9

    :goto_a
    if-ge v15, v13, :cond_11

    .line 82
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_11
    move v15, v14

    .line 83
    :goto_b
    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v10, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    const-string v13, "alternate-imager-name"

    .line 84
    invoke-virtual {v8, v13, v10, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    .line 85
    check-cast v8, Lorg/json/JSONArray;

    if-ne v15, v14, :cond_15

    if-eqz v8, :cond_15

    .line 86
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v13, v9

    :goto_c
    if-ge v13, v10, :cond_14

    .line 87
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_13

    if-ne v15, v14, :cond_13

    .line 89
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v9, :cond_13

    move-object/from16 p1, v8

    .line 90
    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v15, v13

    goto :goto_e

    :cond_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    goto :goto_d

    :cond_13
    move-object/from16 p1, v8

    :goto_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p1

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v14, -0x1

    goto :goto_c

    :cond_14
    move v3, v14

    goto :goto_f

    :cond_15
    const/4 v3, -0x1

    :goto_f
    if-ne v15, v3, :cond_16

    .line 91
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cannot map sensor name to json index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 92
    :cond_16
    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_17

    .line 93
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 94
    move-object v8, v3

    check-cast v8, Landroid/util/LongSparseArray;

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    :goto_10
    if-nez v8, :cond_18

    .line 95
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "No client reference found, unable to initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 96
    :cond_18
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_12

    :sswitch_0
    const-string v3, "bokeh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_12

    .line 98
    :cond_19
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_11

    :sswitch_1
    const-string v3, "hdr"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_12

    .line 100
    :cond_1a
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 101
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 102
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 103
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 104
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_11

    :sswitch_2
    const-string v3, "beauty"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 106
    :cond_1b
    new-instance v0, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    .line 107
    iget-object v6, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v0

    move/from16 v17, v15

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    .line 108
    invoke-direct/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :sswitch_3
    const-string/jumbo v3, "supernight"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_12

    .line 110
    :cond_1c
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 111
    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 112
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    iget-object v3, v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {v0, v15, v3, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 113
    :cond_1d
    :goto_11
    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_14

    .line 114
    :goto_12
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not implemented"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 115
    :catch_1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get an number from the cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    const-wide/16 v4, -0x1

    .line 116
    :cond_1e
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_17

    .line 118
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 119
    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 120
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 122
    iget-object v3, v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 123
    invoke-virtual {v1, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->removeApp(I)V

    goto :goto_15

    .line 124
    :cond_1f
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "App already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_17

    .line 126
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    .line 129
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 131
    iget-object v4, v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_20

    .line 132
    new-instance v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;

    invoke-direct {v4, v1, v3}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;-><init>(ILcom/motorola/camera/camerax_extensions/ExtensionEngine;)V

    const/4 v5, 0x0

    .line 133
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 134
    iget-object v0, v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    new-instance v3, Lkotlin/Pair;

    .line 135
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 136
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_16

    .line 137
    :cond_20
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App registration already exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_21
    move v0, v3

    .line 139
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x659a9683 -> :sswitch_3
        -0x5307ef84 -> :sswitch_2
        0x192f6 -> :sswitch_1
        0x59912e1 -> :sswitch_0
    .end sparse-switch
.end method
