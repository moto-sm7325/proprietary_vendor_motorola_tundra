.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;
.super Ljava/lang/Object;
.source "ControlBarSettingModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final isAlwaysOn:Z

.field public final isAutoTrigger:Z

.field public final key:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final values:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "TT;>;ZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    .line 3
    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    .line 4
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsManager$Key;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ControlBarSettingModel(key="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
