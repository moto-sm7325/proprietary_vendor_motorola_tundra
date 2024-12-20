.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhotoBoothPreferencesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.settings.fragment.PhotoBoothPreferencesFragment$onCreatePreferences$1"
    f = "PhotoBoothPreferencesFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1103be

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_a

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1103db

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    .line 11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1103d7

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->boothRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;)V

    .line 17
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;->listener:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference$OnRadioButtonClickedListener;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->boothRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 19
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment$onCreatePreferences$1$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;)V

    .line 20
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;->listener:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference$OnRadioButtonClickedListener;

    .line 21
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    const-string v2, "enable"

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->boothRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->boothRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 28
    :goto_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE_PHOTO_BOOTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->singleRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 32
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/PhotoBoothPreferencesFragment;->boothRadio:Lcom/motorola/camera/ui/controls_2020/settings/fragment/RadioButtonPreference;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 33
    :cond_9
    :goto_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 35
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
