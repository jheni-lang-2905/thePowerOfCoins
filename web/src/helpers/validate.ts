/* eslint-disable import/no-anonymous-default-export */
export type TValidate = [(value: any, form?: any) => any, string];

const isEmpy = (message?: string): TValidate => [
    (value: {value?: any; id?: string }) => !value || (!value?.value && !value.id),
    message || 'Campo deve ser preenchido.'
];

export default {
    isEmpy,
}
