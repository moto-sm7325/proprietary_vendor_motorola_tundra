.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$2;
.super Ljava/lang/Object;
.source "PhotoBoothPreferencesFragment.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference$OnRadioButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRadioButtonClicked(Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;)V
    .locals 1

    const-string v0, "pref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5
    :goto_0
    iget-boolean p0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE_PHOTO_BOOTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
