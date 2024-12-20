.class public abstract Landroidx/transition/TransitionPropagation;
.super Ljava/lang/Object;
.source "TransitionPropagation.java"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
.end method

.method public abstract getPolymorphic(Lkotlin/reflect/KClass;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;
.end method

.method public abstract getPolymorphic(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;
.end method

.method public abstract onClosed(Ljava/lang/String;)V
.end method

.method public abstract onCollisionCheck(Lcom/motorola/camera/ui/widgets/gl/RectWrapper;)Z
.end method

.method public abstract onDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onOpened(Ljava/lang/String;J)V
.end method
