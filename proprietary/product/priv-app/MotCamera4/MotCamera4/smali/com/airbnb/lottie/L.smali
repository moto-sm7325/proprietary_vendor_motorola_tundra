.class public final Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static depthPastMaxDepth:I

.field public static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field public static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;


# direct methods
.method public static endSection()V
    .locals 1

    .line 1
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    :cond_0
    return-void
.end method

.method public static final isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    return p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;
    .locals 4

    const-class v0, Lcom/airbnb/lottie/L;

    monitor-enter v0

    const/4 v1, 0x1

    int-to-byte v2, v1

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    invoke-direct {v2, p0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;ZI)V

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object p0, Lcom/airbnb/lottie/L;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;-><init>()V

    sput-object p0, Lcom/airbnb/lottie/L;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/L;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit v0

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_2

    const-string v1, " enableFirelog"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_3

    const-string v1, " firelogEventType"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
