.class public final synthetic Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INFLEXIBLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "FLEXIBLE_UPPER_BOUND"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "FLEXIBLE_LOWER_BOUND"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method
