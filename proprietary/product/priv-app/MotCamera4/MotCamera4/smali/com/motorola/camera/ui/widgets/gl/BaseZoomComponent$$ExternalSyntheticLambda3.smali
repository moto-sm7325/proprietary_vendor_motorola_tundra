.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
