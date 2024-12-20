.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzbk$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzac;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    return-object p0
.end method
