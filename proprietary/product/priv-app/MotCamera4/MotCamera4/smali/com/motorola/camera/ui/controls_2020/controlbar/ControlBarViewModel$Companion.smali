.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$Companion;
.super Ljava/lang/Object;
.source "ControlBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getViewModel(Landroid/content/Context;Lcom/motorola/camera/EventListener;)Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;
    .locals 3

    const-class p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    const-string v0, "eventHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 5
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    invoke-direct {v1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;-><init>(Lcom/motorola/camera/EventListener;)V

    .line 7
    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 11
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    .line 13
    iget-object v1, p1, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModel;

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    instance-of p0, v0, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;

    if-eqz p0, :cond_4

    .line 16
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;->onRequery(Landroidx/lifecycle/ViewModel;)V

    goto :goto_1

    .line 17
    :cond_2
    instance-of v1, v0, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;

    invoke-virtual {v0, p2, p0}, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_3
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;-><init>(Lcom/motorola/camera/EventListener;)V

    :goto_0
    move-object v1, p0

    .line 20
    iget-object p0, p1, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    if-eqz p0, :cond_4

    .line 21
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    :cond_4
    :goto_1
    const-string p0, "ViewModelProvider(contex\u2026BarViewModel::class.java)"

    .line 22
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    return-object v1

    :cond_5
    const-string/jumbo p0, "viewModelFactory"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 23
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is not a ViewModelStoreOwner. Make sure to use Activity/Fragment as context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
