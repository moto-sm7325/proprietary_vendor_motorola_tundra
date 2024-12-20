.class public final Lcom/motorola/camera/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Controller;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz p0, :cond_3

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const/16 v1, 0x50

    const/4 v2, 0x1

    if-le p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    const/16 v3, 0xa0

    if-ge p1, v3, :cond_2

    .line 8
    iget-boolean v3, v1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v3, :cond_2

    .line 9
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    .line 10
    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_3

    .line 11
    iget-boolean p1, v1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->setUnlocked(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    iget-object p1, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p1, v1, v0, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 18
    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method
