.class public final Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;
.super Ljava/lang/Object;
.source "StateKeyCollectionBuilder.java"


# instance fields
.field public final mKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;->mKeys:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final add(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;->mKeys:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;->mKeys:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/StateKeyCollectionBuilder;->mKeys:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
