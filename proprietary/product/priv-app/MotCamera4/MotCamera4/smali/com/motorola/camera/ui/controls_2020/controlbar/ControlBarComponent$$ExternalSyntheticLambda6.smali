.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    if-nez v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    if-ne p1, v6, :cond_5

    .line 10
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateFlip(Landroid/view/View;Landroid/view/View;J)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, v5, v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateCrossFade(Landroid/view/View;Landroid/view/View;J)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateFlip(Landroid/view/View;Landroid/view/View;J)V

    .line 14
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateCrossFade(Landroid/view/View;Landroid/view/View;J)V

    :goto_1
    return-void
.end method
