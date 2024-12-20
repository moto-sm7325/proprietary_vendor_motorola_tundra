.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaunchGalleryTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.widgets.gl.photoroll.LaunchGalleryTask$start$1$result$1"
    f = "LaunchGalleryTask.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $data:Lcom/motorola/camera/CameraData;

.field public final synthetic $isCliDisplay:Z

.field public final synthetic $isSplitMode:Z

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraData;",
            "Landroid/view/View;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    iput-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isCliDisplay:Z

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isCliDisplay:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isCliDisplay:Z

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZLkotlin/coroutines/Continuation;)V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    .line 5
    invoke-virtual {v0, p1, p2, v6, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isCliDisplay:Z

    .line 3
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method
